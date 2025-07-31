def var c-estcivil as INTEGER 
    label "Estado Civil" initial 2 no-undo
    view-as radio-set 
        radio-buttons 
            "Solteiro", 150, 
            "Casado", 2, 
            "Viuvo", 30.

def var c-escolaridade1 as char 
    label "Escolaridade" no-undo
    view-as selection-list 
         MULTIPLE
         inner-chars 20 inner-lines 5
         list-items "1o. grau", 
                    "2o. grau", 
                    "3o. grau", 
                    "Pos-graduado".

def var c-escolaridade2 as char 
    label "Escolaridade" no-undo
    view-as COMBO-BOX 
         inner-lines 5
         list-items "1o. grau", 
                    "2o. grau", 
                    "3o. grau", 
                    "Pos-graduado".

DEFINE VARIABLE c-edit AS CHARACTER   NO-UNDO
    VIEW-AS EDITOR INNER-CHARS 60 INNER-LINES 5
        SCROLLBAR-VERTICAL SCROLLBAR-HORIZONTAL.

DEF IMAGE im-logo FILE "c:\windows\winnt256.bmp" SIZE 40 BY 10.

DEF RECTANGLE rt-escolaridade SIZE 70 BY 6
    EDGE-PIXELS 3 BGCOLOR 3.

DEF FRAME f-dados
    im-logo          AT ROW 01 COL 01
    rt-escolaridade  AT ROW 02 COL 01
    c-estcivil       AT ROW 03 COL 05
    c-escolaridade1  AT ROW 03 COL 20
    c-escolaridade2  AT ROW 3  COL 45
    c-edit           AT ROW 9  COL 2
    WITH FRAME f-dados THREE-D NO-LABELS
        VIEW-AS DIALOG-BOX.

ON mouse-select-click OF im-logo DO:
    MESSAGE "imagem selecionada"
        VIEW-AS ALERT-BOX INFO BUTTONS OK.
END.

DISP im-logo WITH FRAME f-dados.
ENABLE C-ESTCIVIL
       C-ESCOLARIDADE1
       C-ESCOLARIDADE2
       c-edit
       im-logo
       WITH FRAME F-DADOS.
WAIT-FOR GO OF FRAME F-DADOS.
ASSIGN C-ESTCIVIL
       C-ESCOLARIDADE1
       C-ESCOLARIDADE2
       c-edit.
MESSAGE c-estcivil SKIP
     c-escolaridade1 skip
     c-escolaridade2 skip
     c-edit
     VIEW-AS ALERT-BOX.
