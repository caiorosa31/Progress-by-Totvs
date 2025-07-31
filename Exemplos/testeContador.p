DEFINE VARIABLE icont AS INTEGER     NO-UNDO.

DO  icont = 1 TO 100:
    DISP icont WITH FRAME f-x DOWN.
    DOWN WITH FRAME f-x.
END.

DO  icont = 100 TO 1 BY -2:
    DISP icont WITH FRAME f-x DOWN.
    DOWN WITH FRAME f-x.
END.
