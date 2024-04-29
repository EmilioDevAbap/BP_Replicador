CLASS zclca_monitor_cpi_destination DEFINITION
 PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES:
      ty_email TYPE STANDARD TABLE OF string WITH DEFAULT KEY .

    CONSTANTS gc_iniciado TYPE c VALUE 'I' ##NO_TEXT.
    CONSTANTS gc_sucesso TYPE c VALUE 'S' ##NO_TEXT.
    CONSTANTS gc_log_erro TYPE ze_log_integracao VALUE 'E'.
    CONSTANTS gc_log_erro_sucesso TYPE ze_log_integracao VALUE 'A'.
    CONSTANTS gc_erro TYPE c VALUE 'E' ##NO_TEXT.
    CONSTANTS gc_ponto TYPE c VALUE ';' ##NO_TEXT.
    DATA gs_log_header TYPE ztca_log_cpi .
    DATA:
      gt_log_item   TYPE TABLE OF ztca_log_cpi_mgs .
    DATA gv_guid TYPE sysuuid_x16 .
    DATA gv_chave_ref TYPE char50 .
    DATA go_instance TYPE REF TO zclca_monitor_cpi .
    DATA gs_data TYPE zi_ca_get_data_cpi_filter .

    METHODS started_process
      IMPORTING
        !iv_processo    TYPE ze_processo
        !iv_metodo      TYPE ze_method_api
        !iv_json        TYPE string
        !iv_chave_ref   TYPE char50 OPTIONAL
        !iv_destination TYPE string
      EXPORTING
        !et_return      TYPE bapiret2_t .
    METHODS save_log
      IMPORTING
        !iv_processo     TYPE ze_processo
        !iv_metodo       TYPE ze_method_api
        !iv_json_retorno TYPE string
        !iv_json         TYPE string
        !it_return       TYPE bapiret2_t
        !iv_destination  TYPE string
      EXPORTING
        !et_return       TYPE bapiret2_t .
    METHODS get_instance
      RETURNING
        VALUE(ro_instance) TYPE REF TO zclca_monitor_cpi .
    METHODS check_process
      IMPORTING
        !iv_processo       TYPE ze_processo
        !iv_metodo         TYPE ze_method_api
      RETURNING
        VALUE(rv_save_log) TYPE flag .
  PROTECTED SECTION.
  PRIVATE SECTION.

    METHODS success_integrated
      IMPORTING
        !iv_status       TYPE ze_status_header OPTIONAL
        !iv_json         TYPE string OPTIONAL
        !iv_json_retorno TYPE string OPTIONAL
        !iv_dest         TYPE string
        !it_return       TYPE bapiret2_t.

    METHODS get_data_log
      IMPORTING
        !iv_idprocesso TYPE sysuuid_x16 .

    METHODS error_integrated
      IMPORTING
        !iv_status       TYPE ze_status_header
        !iv_json         TYPE string
        !iv_json_retorno TYPE string
        !iv_dest         TYPE string
        !it_return       TYPE bapiret2_t.

    METHODS send_email
      IMPORTING
        !iv_email TYPE string .

    METHODS get_data
      IMPORTING
        !iv_processo TYPE ze_processo
        !iv_metodo   TYPE ze_method_api
      EXPORTING
        !et_return   TYPE bapiret2_t .

    METHODS update_log
      IMPORTING
        !iv_status       TYPE ze_status_header OPTIONAL
        !iv_json         TYPE string OPTIONAL
        !iv_dest         TYPE string
        !iv_json_retorno TYPE string OPTIONAL.

    METHODS update_log_mgs
      IMPORTING
        !iv_status TYPE ze_status_header
        !it_return TYPE bapiret2_t.

    METHODS split_email
      IMPORTING
        !iv_email       TYPE string
      RETURNING
        VALUE(rt_email) TYPE ty_email .
ENDCLASS.



CLASS ZCLCA_MONITOR_CPI_DESTINATION IMPLEMENTATION.


  METHOD error_integrated.

    update_log(
               iv_status       = iv_status
                iv_json         = iv_json
                iv_dest         = iv_dest
                iv_json_retorno = iv_json_retorno ).

    update_log_mgs( iv_status   = iv_status
                    it_return   = it_return ).

    IF gs_data-emailativo IS NOT INITIAL.

      DATA(lt_email) =  split_email( gs_data-email ).

      LOOP AT lt_email INTO DATA(ls_email).
        send_email( iv_email = ls_email ).
      ENDLOOP.

    ENDIF.

  ENDMETHOD.


  METHOD get_data.

    SELECT SINGLE processo,
              sysid,
              metodo,
              idprocesso,
              descricao,
              destination,
              caminhourl,
              tipo,
              log,
              emailativo,
              email
 FROM zi_ca_get_data_cpi_filter( p_processo = @iv_processo,
                                 p_sysid    = @sy-sysid,
                                 p_metodo   = @iv_metodo )
 INTO @DATA(ls_data).

    IF sy-subrc IS INITIAL.
      MOVE-CORRESPONDING ls_data TO gs_data.

    ELSE.
      IF sy-subrc NE 0.
        " Processo não cadastrado no App de Parâmetros!
        et_return = VALUE #( BASE et_return ( type = 'E' id = 'ZCA_MONITOR_CPI' number = '000'
                                              message_v1 = iv_processo
                                              message_v2 = iv_metodo
                                              message_v3 = sy-sysid ) ).
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.


  METHOD get_data_log.

    SELECT SINGLE client,
              id_processo,
              processo,
              chave_ref,
              metodo,
              destination,
              endpoint,
              json,
              json_retorno,
              status,
              created_by,
              created_at,
              last_changed_by,
              last_changed_at,
              local_last_changed_at
 FROM ztca_log_cpi
WHERE id_processo = @iv_idprocesso
 INTO @gs_log_header.

    SELECT   client,
             id_processo,
             id_msgs,
             processo,
             type,
             id,
             numero,
             message,
             status,
             created_by,
             created_at,
             last_changed_by,
             last_changed_at,
             local_last_changed_at
    FROM ztca_log_cpi_mgs
   WHERE id_processo = @iv_idprocesso
    INTO TABLE @gt_log_item.


  ENDMETHOD.


  METHOD get_instance.

* ---------------------------------------------------------------------------
* Caso a instância não exista, criar uma nova
* ---------------------------------------------------------------------------
    IF NOT go_instance IS BOUND.
      go_instance = NEW zclca_monitor_cpi( ).
    ENDIF.

    ro_instance = go_instance.

  ENDMETHOD.


  METHOD save_log.

    IF gs_data IS INITIAL.

      get_data( EXPORTING iv_processo = iv_processo
                          iv_metodo   = iv_metodo
                IMPORTING et_return   = et_return ).

    ENDIF.

    CHECK  et_return[] IS INITIAL.

    IF line_exists( it_return[ type = gc_erro ] ) AND
       ( gs_data-log =  gc_log_erro OR
         gs_data-log =  gc_log_erro_sucesso ).

      error_integrated(
                        iv_status       = gc_erro
                        iv_json         = iv_json
                        iv_dest        = iv_destination
                        iv_json_retorno = iv_json_retorno
                        it_return       = it_return ).

    ELSEIF gs_data-log =  gc_log_erro_sucesso.
      success_integrated( iv_status       = gc_sucesso
                          iv_json         = iv_json
                          iv_dest = iv_destination
                          iv_json_retorno = iv_json_retorno
                          it_return       = it_return ).
    ENDIF.

  ENDMETHOD.


  METHOD send_email.


    CONSTANTS:
      lc_priority    TYPE bcs_docimp VALUE '1',
      lc_template_id TYPE smtg_tmpl_id VALUE 'ZMODELO_EMAIL_LOG'.

    DATA: lv_content TYPE string,
          lv_email   TYPE ad_smtpadr.

    lv_email = iv_email.

    TRY .
        DATA(lo_email_api_ref) = cl_smtg_email_api=>get_instance( iv_template_id = lc_template_id ).
      CATCH cx_smtg_email_common.

    ENDTRY.

    TRY .
        DATA(lo_send_request_ref) = cl_bcs=>create_persistent( ).
      CATCH cx_send_req_bcs.

    ENDTRY.

    DATA(lt_cds_key) = VALUE if_smtg_email_template=>ty_gt_data_key( ).

    TRY .
        " Get the RawHTML Content and Replace the palceholder with the INV Details in the email
        lo_email_api_ref->render( EXPORTING
                                    iv_language = sy-langu
                                    it_data_key = lt_cds_key
                                  IMPORTING
                                    ev_subject = DATA(lv_subject)
                                    ev_body_html = DATA(lv_body_html) ).
      CATCH cx_smtg_email_common.

    ENDTRY.


    DATA(lv_trocarnome)  = gs_data-processo.
    DATA(lv_trocaremail) = iv_email.

    DATA(lv_cell_attrib) = ` width=85 valign=top style='width:77.95pt;border-top:none;border-left:`
                           && `none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;`
                           && `mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;`
                           && `mso-border-alt:solid windowtext .5pt;background:white;mso-background-themecolor:`
                           && `background1;padding:0in 5.4pt 0in 5.4pt'>`
                           && `<p class=MsoNormal align=center style='text-align:center'><span`
                           && `style='mso-bidi-font-family:Calibri'><o:p>`.

    LOOP AT gt_log_item ASSIGNING FIELD-SYMBOL(<fs_item>).
      lv_content = |{ lv_content }<tr>|.
      lv_content = |{ lv_content }<td{ lv_cell_attrib && <fs_item>-id_processo }</o:p></span></p></td>|.
      lv_content = |{ lv_content }<td{ lv_cell_attrib && <fs_item>-id_msgs }</o:p></span></p></td>|.
      lv_content = |{ lv_content }<td{ lv_cell_attrib && <fs_item>-id }</o:p></span></p></td>|.
      lv_content = |{ lv_content }<td{ lv_cell_attrib && <fs_item>-numero }</o:p></span></p></td>|.
      lv_content = |{ lv_content }<td{ lv_cell_attrib && <fs_item>-message }</o:p></span></p></td>|.
      lv_content = |{ lv_content }<td{ lv_cell_attrib && <fs_item>-status }</o:p></span></p></td>|.
      lv_content = |{ lv_content }<td{ lv_cell_attrib && <fs_item>-created_at }</o:p></span></p></td>|.
      lv_content = |{ lv_content }<td{ lv_cell_attrib && <fs_item>-local_last_changed_at }</o:p></span></p></td>|.
      lv_content = |{ lv_content }<td{ lv_cell_attrib && <fs_item>-created_by }</o:p></span></p></td>|.
      lv_content = |{ lv_content }</tr>|.
    ENDLOOP.

    REPLACE 'TROCARTABELA' WITH lv_content INTO lv_body_html.
    REPLACE 'TROCARNOME' WITH lv_trocarnome INTO lv_body_html.
    REPLACE 'TROCAREMAIL' WITH lv_trocaremail INTO lv_body_html.

    TRY .
        DATA(lv_body_html_soli) = cl_bcs_convert=>string_to_soli( lv_body_html ).  " Build HTML for Sending
      CATCH cx_bcom_mime.

    ENDTRY.

    DATA(lo_multipart_ref) = NEW cl_gbt_multirelated_service( ).

    lo_multipart_ref->set_main_html(
        EXPORTING
          content     = lv_body_html_soli
          description = 'emailDetails' ).

    TRY .
*Create & Set the Email Document
        DATA(lo_doc_bcs_ref) = cl_document_bcs=>create_from_multirelated(
                EXPORTING
                  i_subject          = CONV so_obj_des( lv_subject )               "Set the Email Subject
                  i_importance       = lc_priority
                  i_multirel_service = lo_multipart_ref ).

      CATCH cx_document_bcs
            cx_gbt_mime
            cx_bcom_mime.

    ENDTRY.

    TRY .
        lo_send_request_ref->set_document( lo_doc_bcs_ref  ).
      CATCH cx_send_req_bcs.

    ENDTRY.

*Populate sender name
    TRY .
        DATA(lo_sender_ref) = cl_sapuser_bcs=>create( sy-uname ).
      CATCH cx_address_bcs.

    ENDTRY.

    IF lo_sender_ref IS BOUND.
      TRY .
          lo_send_request_ref->set_sender( i_sender = lo_sender_ref ).
        CATCH cx_send_req_bcs.

      ENDTRY.
    ENDIF.

    TRY .
        DATA(lo_recipient_ref) = cl_cam_address_bcs=>create_internet_address( lv_email ).
      CATCH cx_address_bcs.

    ENDTRY.

    IF lo_recipient_ref IS BOUND.
*Add recipient to send request
      TRY .

          lo_send_request_ref->add_recipient(
          EXPORTING
            i_recipient = lo_recipient_ref
            i_express   = abap_true ).

        CATCH cx_send_req_bcs.

      ENDTRY.

    ENDIF.

    TRY .
* Send email
        DATA(lv_sent_to_all) = lo_send_request_ref->send( ).
      CATCH cx_send_req_bcs.

    ENDTRY.


* If e-mail is successful then do commit work
    IF lv_sent_to_all = abap_true.
      COMMIT WORK AND WAIT.
    ENDIF.

  ENDMETHOD.


  METHOD split_email.

    DATA : lt_texto TYPE ty_email.

    SPLIT iv_email AT gc_ponto INTO TABLE lt_texto.

    IF lt_texto[] IS NOT INITIAL.
      rt_email[] = lt_texto[].
    ENDIF.

  ENDMETHOD.


  METHOD started_process.

    FREE: et_return.

    gv_chave_ref = iv_chave_ref.

    get_data( EXPORTING iv_processo = iv_processo
                        iv_metodo   = iv_metodo
              IMPORTING et_return   = et_return ).

    IF gs_data IS NOT INITIAL.

      update_log(
      EXPORTING
          iv_status = gc_iniciado
          iv_dest = iv_destination
          iv_json   = iv_json ).

    ENDIF.

  ENDMETHOD.


  METHOD success_integrated.

    update_log(
                iv_status       = iv_status
                iv_json         = iv_json
                iv_dest         = iv_dest
                iv_json_retorno = iv_json_retorno ).

    update_log_mgs( iv_status = iv_status
                    it_return = it_return ).

  ENDMETHOD.


  METHOD update_log.

    GET TIME STAMP FIELD DATA(lv_ts).

    IF gv_guid IS INITIAL.

      TRY .
          gv_guid = cl_system_uuid=>create_uuid_x16_static( ).
        CATCH cx_uuid_error.

      ENDTRY.
    ENDIF.

* Ajuste solicitado 22/02/2024
* Chave de Referência deve ser preenchida com o ID
* Chave de Referência vira filtro no APP
    IF gv_chave_ref IS INITIAL.
      DATA(lv_chave_ref) = gv_guid.
    ELSE.
      lv_chave_ref = gv_chave_ref.
    ENDIF.

    DATA(ls_log_header) = VALUE ztca_log_cpi( client                = sy-mandt
                                              id_processo           = gv_guid
                                              processo              = gs_data-processo
*                                              chave_ref             = gv_chave_ref
                                              chave_ref             = lv_chave_ref
                                              metodo                = gs_data-metodo
                                              destination           = iv_dest
                                              endpoint              = gs_data-caminhourl
                                              created_by            = sy-uname
                                              created_at            = lv_ts
                                              local_last_changed_at = lv_ts ).


    IF iv_status IS NOT INITIAL.
      ls_log_header-status = iv_status.
    ENDIF.

    IF iv_json IS NOT INITIAL.
      ls_log_header-json = iv_json.
    ENDIF.

    IF iv_json_retorno IS NOT INITIAL.
      ls_log_header-json_retorno = iv_json_retorno.
    ENDIF.

    MODIFY ztca_log_cpi FROM ls_log_header.
  ENDMETHOD.


  METHOD update_log_mgs.

    DATA lt_log_item TYPE TABLE OF ztca_log_cpi_mgs.

    GET TIME STAMP FIELD DATA(lv_ts).

    TRY .
        DATA(lv_guid) = cl_system_uuid=>create_uuid_x16_static( ).
      CATCH cx_uuid_error.

    ENDTRY.

    gt_log_item = VALUE #( FOR ls_return IN it_return
                          (
                               client = sy-mandt
                               id_processo = gv_guid "gs_data-idprocesso
                               id_msgs     = lv_guid
                               processo    = gs_data-processo
                               type        = ls_return-type
                               id          = ls_return-id
                               numero      = ls_return-number
                               message     = ls_return-message
                               status      = iv_status
                               created_by  = sy-uname
                               created_at  = lv_ts
                               local_last_changed_at = lv_ts ) ) .

    MODIFY ztca_log_cpi_mgs FROM TABLE gt_log_item.
  ENDMETHOD.


  METHOD check_process.
    DATA: lv_save_log TYPE flag.

    CLEAR: lv_save_log,
           gs_data.

    get_data( EXPORTING iv_processo = iv_processo
                        iv_metodo   = iv_metodo
              IMPORTING et_return   = DATA(lt_return) ).

    rv_save_log = gs_data-log.

  ENDMETHOD.
ENDCLASS.
