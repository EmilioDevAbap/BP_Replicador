FUNCTION zfmbp_bupa_outbound_main.
*"----------------------------------------------------------------------
*"*"Interface local:
*"  IMPORTING
*"     VALUE(IV_QUEUE_ID) TYPE  PRX_SCNT OPTIONAL
*"     VALUE(IT_RECEIVER_LIST) TYPE  SXI_ADDRESSES OPTIONAL
*"     VALUE(IT_AUDIT_LIST) TYPE  ABA_BUPA_TT_AA OPTIONAL
*"  EXPORTING
*"     VALUE(EV_MESSAGE_ID) TYPE  SXMSMGUID
*"  CHANGING
*"     VALUE(CT_BP_EXTERN) TYPE  BUS_EI_EXTERN_T
*"----------------------------------------------------------------------
* 3.4.51. GAP-13 Cópia de BP entre mandantes
  CALL FUNCTION 'ZFMBP_TRIGGER_CHANGES_BP'
*    STARTING NEW TASK 'NONE'
    IN BACKGROUND TASK
    EXPORTING
      iv_queue_id      = iv_queue_id
      it_receiver_list = it_receiver_list
      it_audit_list    = it_audit_list
    CHANGING
      ct_bp_extern     = ct_bp_extern.


* 3.4.213. ATENDARE - GAP-INT-196 - Mensageria
  CALL FUNCTION 'ZFMBP_DEMANDA_PARCEIRO'
    STARTING NEW TASK 'NONE'
    EXPORTING
      iv_queue_id  = iv_queue_id
    CHANGING
      ct_bp_extern = ct_bp_extern.
  .

ENDFUNCTION.
