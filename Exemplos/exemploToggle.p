DEF VAR c-nome AS CHARACTER NO-UNDO
    VIEW-AS FILL-IN LABEL "Nome" FORMAT "x(40)".

DEF VAR l-casado AS LOGICAL NO-UNDO
    VIEW-AS TOGGLE-BOX LABEL "Casado".
DEF VAR l-solteiro AS LOGICAL NO-UNDO INITIAL YES
    VIEW-AS TOGGLE-BOX LABEL "Solteiro".

DEF BUTTON bt-info LABEL "Informacoes" SIZE 20 BY 1.

DEF FRAME f-dados
    c-nome AT 2
    l-casado AT 2
    l-solteiro 
    bt-info AT 2
    WITH SIDE-LABELS THREE-D VIEW-AS DIALOG-BOX
        TITLE "Funcionario".
ON choose OF bt-info DO:
    MESSAGE "nome: " c-nome:SCREEN-VALUE SKIP
            "casado: " l-casado:CHECKED SKIP
            "solteiro: " "x" + l-solteiro:SCREEN-VALUE SKIP
            "casado2: " INPUT l-casado
        VIEW-AS ALERT-BOX.
END.
ON VALUE-CHANGED OF c-nome DO:
    IF LENGTH(c-nome:SCREEN-VALUE) > 0 THEN
        ASSIGN bt-info:SENSITIVE = YES.
    ELSE 
        ASSIGN bt-info:SENSITIVE = NO.
END.
ON value-changed OF l-casado DO:
    ASSIGN l-solteiro:CHECKED = NOT l-casado:CHECKED.
END.
ON value-changed OF l-solteiro DO:
    IF l-solteiro:CHECKED THEN
        ASSIGN l-casado:CHECKED = NO.
    ELSE
        ASSIGN l-casado:CHECKED = YES.
/*    ASSIGN l-casado:CHECKED = NOT l-solteiro:CHECKED. */
END.
UPDATE c-nome l-casado l-solteiro WITH FRAME f-dados.
