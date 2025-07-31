/* persistente.p */
DEF VAR zzz AS CHAR NO-UNDO.

MESSAGE "estou aqui - " zzz VIEW-AS ALERT-BOX.

PROCEDURE pi-calcula:
    ASSIGN zzz = "calcula".
    MESSAGE "executando calcula - " zzz VIEW-AS ALERT-BOX.
END PROCEDURE.

PROCEDURE pi-resposta:
    ASSIGN zzz = "resposta".
    MESSAGE "executando resposta - " zzz VIEW-AS ALERT-BOX.
END PROCEDURE.
