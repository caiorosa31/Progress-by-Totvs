DEFINE VARIABLE iTot AS INTEGER     NO-UNDO.
DEFINE VARIABLE ix   AS INTEGER     NO-UNDO.

FUNCTION fnCalcula RETURNS INTEGER (INPUT pVal1 AS INTEGER,
                                    INPUT pVal2 AS INTEGER) FORWARD.

DO  ix = 1 TO 10:
    IF  FALSE THEN DO:
        RUN piCalcula (INPUT 45,
                       ix,
                       OUTPUT iTot).
        MESSAGE 45 "*" ix "=" iTot VIEW-AS ALERT-BOX.
    END.
    MESSAGE 45 "*" ix "=" fnCalcula(45, ix) VIEW-AS ALERT-BOX.
    
END.

FUNCTION fnCalcula RETURNS INTEGER (INPUT pVal1 AS INTEGER,
                                    INPUT pVal2 AS INTEGER):
    DEFINE VARIABLE iRet AS INTEGER     NO-UNDO.
    ASSIGN iRet = pVal1 * pVal2.
    RETURN iRet.
END FUNCTION.

PROCEDURE piCalcula:
    DEF INPUT PARAM pVal1 AS INTEGER NO-UNDO.
    DEF INPUT PARAM pVal2 AS INTEGER NO-UNDO.
    DEF OUTPUT PARAM pRet AS INTEGER NO-UNDO.
    
    ASSIGN pRet = pVal1 * pVal2.
END PROCEDURE.
