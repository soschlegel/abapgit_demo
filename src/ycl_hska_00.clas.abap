CLASS ycl_hska_00 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES:
      if_oo_adt_classrun.
    TYPES: BEGIN OF ts_person,
             id       TYPE i,
             forename TYPE c LENGTH 20,
             surname  TYPE c LENGTH 20,
             age      TYPE i,
           END OF ts_person,
           BEGIN OF ts_person2,
             id       TYPE i,
             forename TYPE c LENGTH 40,
             lastname TYPE c LENGTH 40,
             age      TYPE i,
           END OF ts_person2.

  PROTECTED SECTION.


  PRIVATE SECTION.




ENDCLASS.



CLASS ycl_hska_00 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

*    data: lo_person type REF TO lcl_person.
*
*          create OBJECT lo_person.


    out->write( lcl_person=>gv_counter ).

    DATA(lo_person) = NEW lcl_person( ).


    data(lo_person_inf) = cast lif_person( lo_person ).

    lo_person_inf->display( ).

*    lo_person->lif_person~display( ).

    out->write( lo_person->gv_counter ).

    IF SY-SUBRC <> 0.
*     MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*       WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
    ENDIF.



*    out->write( lt_persons ).



  ENDMETHOD.

ENDCLASS.
