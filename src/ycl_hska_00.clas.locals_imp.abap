*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
interface lif_person.

    methods:
        display.

ENDINTERFACE.

CLASS lcl_person DEFINITION.


  PUBLIC SECTION.

    interfaces: lif_person.

    CLASS-METHODS:
      class_constructor.

    CLASS-DATA:
                  gv_counter TYPE i.


    METHODS: display.





ENDCLASS.

CLASS lcl_person IMPLEMENTATION.

  METHOD class_constructor.

    gv_counter = 666.

  ENDMETHOD.



  METHOD display.

  ENDMETHOD.

  METHOD lif_person~display.

  ENDMETHOD.

ENDCLASS.
