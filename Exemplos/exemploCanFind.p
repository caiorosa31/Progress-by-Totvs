/*
FIND FIRST state WHERE state.state = "ce" NO-LOCK NO-ERROR.
IF NOT AVAIL state THEN DO:
*/
IF NOT CAN-FIND(state WHERE state.state = "sc") THEN DO:
    MESSAGE "criando registro"
        VIEW-AS ALERT-BOX INFO BUTTONS OK.
END.
ELSE DO:
    MESSAGE "Registro ja existe"
        VIEW-AS ALERT-BOX INFO BUTTONS OK.
END.
