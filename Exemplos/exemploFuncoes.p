DEFINE VARIABLE c-lista AS CHARACTER   NO-UNDO.
DEFINE VARIABLE c-lin   AS CHARACTER   NO-UNDO.
DEFINE VARIABLE c-msg   AS CHARACTER   NO-UNDO.
DEFINE VARIABLE i-cont  AS INTEGER     NO-UNDO.

ASSIGN c-lista = "sc,rs,ce,df,am,se,ac,ro"
       c-lin   = "Araraquara"
       c-msg   = "~"o &1 nao foi encontrado na base de &2.".

ASSIGN ENTRY(4, c-lista) = "Beltrano"
       ENTRY(5, c-lista) = ""
       c-lin = REPLACE(c-lin, "a", "cicrano").

MESSAGE 
    "Lookup=" LOOKUP("ce", c-lista) SKIP
    "entry=" ENTRY(4, c-lista) skip
    "num-entries=" NUM-ENTRIES(c-lin, "a") SKIP
    "substring=" SUBSTRING(c-lin, 6) SKIP
    "length=" LENGTH(c-lin) SKIP
    "substitute=" SUBSTITUTE(c-msg, "Fulano", "clientes") SKIP
    "replace=" REPLACE(c-lin, "a", "Tudo") SKIP
    "index=" INDEX(c-msg, "na", 10) SKIP
    "index=" R-INDEX(c-msg, "na")
    VIEW-AS ALERT-BOX.

DO  i-cont = 1 TO NUM-ENTRIES(c-lista):
    DISP ENTRY(i-cont, c-lista) WITH FRAME f-x DOWN.
    DOWN WITH FRAME f-x.
END.

DO  i-cont = 1 TO NUM-ENTRIES(c-lin, "a"):
    DISP ENTRY(i-cont, c-lin, "a") WITH FRAME f-x DOWN.
    DOWN WITH FRAME f-x.
END.
