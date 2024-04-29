*&---------------------------------------------------------------------*
*& Include zbpi_start_program
*&---------------------------------------------------------------------*

START-OF-SELECTION.

  PERFORM p_start.

*&---------------------------------------------------------------------*
*& Form p_start
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*

FORM p_start.

  DATA(lo_instance) = NEW zclbp_replica_dados( ).

  lo_instance->start( EXPORTING it_bp     = s_bp[]
                                iv_action = p_action
                      IMPORTING et_return = DATA(lt_return) ).

*  PERFORM p_show_log USING lt_return.

ENDFORM.

*&---------------------------------------------------------------------*
*& Form p_show_log
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*

FORM p_show_log USING ut_return TYPE bapiret2_t.

  DATA: lt_message TYPE esp1_message_tab_type.

  CHECK ut_return[] IS NOT INITIAL.

* ----------------------------------------------------------------------
* Prepara as mensagens
* ----------------------------------------------------------------------

  LOOP AT ut_return REFERENCE INTO DATA(ls_return).

    lt_message = VALUE #( BASE lt_message ( msgid  = ls_return->id
                                            msgty  = ls_return->type
                                            msgno  = ls_return->number
                                            msgv1  = ls_return->message_v1
                                            msgv2  = ls_return->message_v2
                                            msgv3  = ls_return->message_v3
                                            msgv4  = ls_return->message_v4
                                            lineno = sy-tabix ) ).
  ENDLOOP.

* ----------------------------------------------------------------------
* Exibe apenas uma mensagem
* ----------------------------------------------------------------------
  IF lines( lt_message[] ) = 1.

    READ TABLE lt_message INTO DATA(ls_message) INDEX 1.

    MESSAGE ID ls_message-msgid TYPE 'S' NUMBER ls_message-msgno
            DISPLAY LIKE ls_message-msgty
            WITH ls_message-msgv1 ls_message-msgv2 ls_message-msgv3 ls_message-msgv4.

* ----------------------------------------------------------------------
* Exibe múltiplas mensagens como pop-up
* ----------------------------------------------------------------------
  ELSE.

    CALL FUNCTION 'C14Z_MESSAGES_SHOW_AS_POPUP'
      TABLES
        i_message_tab = lt_message[].

  ENDIF.

ENDFORM.
