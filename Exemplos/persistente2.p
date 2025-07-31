/* persistente.p */
DEF VAR zzz AS CHAR NO-UNDO.

MESSAGE "estou aqui - bloco principal - " zzz VIEW-AS ALERT-BOX.

PROCEDURE pi-calcula:
    DEF INPUT PARAM pNome AS CHAR NO-UNDO.
    DEF INPUT PARAM pValor AS INTEGER NO-UNDO.
    DEF OUTPUT PARAM pRet AS INTEGER NO-UNDO.
    
    ASSIGN zzz = "calcula".
    MESSAGE "executando calcula - " pNome SKIP pValor VIEW-AS ALERT-BOX.
    ASSIGN pRet = pValor * 3.
    
END PROCEDURE.

PROCEDURE pi-resposta:
    ASSIGN zzz = "resposta".
    MESSAGE "executando resposta - " zzz VIEW-AS ALERT-BOX.
END PROCEDURE.
