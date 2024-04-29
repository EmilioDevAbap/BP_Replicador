*&---------------------------------------------------------------------*
*& Include zbpi_top
*&---------------------------------------------------------------------*
TABLES: but000.

TYPES: ty_bp TYPE RANGE OF bu_partner.

DATA:
  gt_return          TYPE bapiret2_tab,
  gt_control_int     TYPE STANDARD TABLE OF ztbp_control_int WITH EMPTY KEY,
  gt_bps_oil         TYPE STANDARD TABLE OF bu_partner,
  gv_destination_oil TYPE char3.

CONSTANTS: BEGIN OF gc_values,
             bp                      TYPE ze_param_modulo   VALUE 'BP',
             cross_client            TYPE ze_param_chave1   VALUE 'CROSS_CLIENT',
             businesspartnergrouping TYPE ze_param_chave2  VALUE 'BUSINESSPARTNERGROUPING',
             destination_select      TYPE ze_param_chave2   VALUE 'DESTINATION_SELECT',
             destination             TYPE ze_param_chave2   VALUE 'DESTINATION',
             local                   TYPE ze_param_low    VALUE 'LOCAL',
             a                       TYPE char1   VALUE 'A',
             u                       TYPE char1   VALUE 'U',
             i                       TYPE char1   VALUE 'I',
             s                       TYPE char1    VALUE 'S',
             eq                      TYPE char2    VALUE 'EQ',
           END OF gc_values,

           BEGIN OF gc_message,
             id TYPE symsgid     VALUE 'ZBP_LOG_API_BP',
           END OF gc_message.

SELECTION-SCREEN BEGIN OF BLOCK text WITH FRAME TITLE TEXT-001.
  SELECT-OPTIONS: s_bp FOR but000-partner.
  PARAMETERS: p_action TYPE ze_action.
SELECTION-SCREEN END OF BLOCK text.
