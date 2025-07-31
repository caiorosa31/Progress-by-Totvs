DEF VAR c-dad           AS CHAR EXTENT 20 NO-UNDO.
DEFINE VARIABLE i-cont  AS INTEGER     NO-UNDO.
DEFINE VARIABLE c-lin   AS CHARACTER   NO-UNDO.

UPDATE c-dad WITH 1 COLUMN SIDE-LABELS.

DO i-cont = 1 TO EXTENT(c-dad):
    ASSIGN c-lin = c-lin + c-dad[i-cont] + ",".
END.

MESSAGE c-lin VIEW-AS ALERT-BOX.
