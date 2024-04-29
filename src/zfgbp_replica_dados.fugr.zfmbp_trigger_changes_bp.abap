FUNCTION zfmbp_trigger_changes_bp.
*"----------------------------------------------------------------------
*"*"Interface local:
*"  IMPORTING
*"     VALUE(IV_QUEUE_ID) TYPE  PRX_SCNT OPTIONAL
*"     VALUE(IT_RECEIVER_LIST) TYPE  SXI_ADDRESSES OPTIONAL
*"     VALUE(IT_AUDIT_LIST) TYPE  ABA_BUPA_TT_AA OPTIONAL
*"  CHANGING
*"     VALUE(CT_BP_EXTERN) TYPE  BUS_EI_EXTERN_T
*"----------------------------------------------------------------------
  CONSTANTS: BEGIN OF gc_values,
               bp                      TYPE ze_param_modulo VALUE 'BP',
               cross_client            TYPE ze_param_chave1 VALUE 'CROSS_CLIENT',
               block                   TYPE ze_param_chave2  VALUE  'BLOCK',
               destination             TYPE ze_param_chave2  VALUE  'DESTINATION',
               destination_select      TYPE ze_param_chave2  VALUE  'DESTINATION_SELECT',
               businesspartnergrouping TYPE ze_param_chave2  VALUE  'BUSINESSPARTNERGROUPING',
               local                   TYPE ze_param_low VALUE 'LOCAL',
               i                       TYPE ze_action VALUE 'I',
               u                       TYPE ze_action VALUE 'U',
               cpi_connect             TYPE char12 VALUE 'CPI_CONNECT',
             END OF gc_values.

  TYPES:
         ty_group TYPE RANGE OF bu_group.

  DATA:
    lt_bp        TYPE STANDARD TABLE OF kunnr WITH EMPTY KEY.

  SELECT chave2, chave3, low, high, ParamDescricao  FROM zi_ca_param_val
  WHERE Modulo EQ @gc_values-bp
  AND Chave1 EQ @gc_values-cross_client
  INTO TABLE @DATA(lt_param).

  CHECK NOT line_exists( lt_param[ chave2 = gc_values-block  low = sy-uname ] ) " BP_USER
      AND line_exists( lt_param[ chave2 = gc_values-destination low = sy-mandt ] )
      AND line_exists( lt_param[ chave2 = gc_values-destination low = gc_values-local ] ) .

  DATA(lv_bp) = VALUE #( ct_bp_extern[ 1 ]-header-object_instance-bpartner OPTIONAL ).

*  IMPORT  lt_bp FROM DATABASE indx(zk) ID lv_bp. " Class zfmbp_trigger_changes_bp
*
*  IF lt_bp IS INITIAL.

  CHECK lv_bp IS NOT INITIAL AND line_exists( lt_param[ Chave2 = gc_values-businesspartnergrouping ] ).

  DATA(lr_group) = VALUE ty_group( FOR ls_group IN lt_param WHERE ( Chave2 = gc_values-businesspartnergrouping ) ( sign = 'I' option = 'EQ' low =  ls_group-low  ) ).

  SELECT  SINGLE 'X'  FROM A_BusinessPartner
  WHERE BusinessPartner =  @lv_bp
       AND BusinessPartnerGrouping IN @lr_group
  INTO  @DATA(lv_continue).

  CHECK lv_continue IS NOT INITIAL.

  NEW zclbp_replica_dados(  )->release_data( lv_bp ).

  DATA(lv_mandt) = VALUE #( lt_param[ Chave2 = gc_values-destination_select low = sy-mandt ]-high OPTIONAL ).

  SELECT SINGLE 'X'  FROM but000 CLIENT SPECIFIED
       WHERE client EQ @lv_mandt
       AND partner EQ @lv_bp
       INTO  @DATA(lv_exists).

  IF lv_exists IS INITIAL.

    NEW zclbp_replica_dados( iv_bp       = lv_bp
                                                iv_action = gc_values-i
                                                it_param = lt_param[]  )->execute(  ).

  ENDIF.

  SELECT SINGLE * FROM ztbp_control_int WHERE bp EQ @lv_bp INTO @DATA(ls_control_int).

  DATA(lv_time) = sy-datum && sy-uzeit.

  MODIFY ztbp_control_int FROM @( VALUE #(
      bp = lv_bp
*        acao = COND #( WHEN lv_exists IS INITIAL THEN gc_values-i ELSE gc_values-u )
      datahora_atua = lv_time
      datahora_inicio = COND #( WHEN lv_exists IS INITIAL THEN lv_time ELSE  COND #( WHEN ls_control_int-datahora_fim IS NOT INITIAL AND ls_control_int-datahora_inicio IS NOT INITIAL THEN space ) )
      datahora_fim = COND #( WHEN lv_exists IS INITIAL THEN lv_time ELSE COND #( WHEN ls_control_int-datahora_fim IS NOT INITIAL AND ls_control_int-datahora_inicio IS NOT INITIAL THEN space ) )
      usuario = sy-uname
   ) ).

  IF sy-subrc EQ 0.
    COMMIT WORK.
  ENDIF.

*  ELSE.
*    DELETE FROM DATABASE indx(zk)  ID  lv_bp.
*  ENDIF.

ENDFUNCTION.
