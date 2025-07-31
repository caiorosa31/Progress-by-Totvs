DEFINE VARIABLE hprog AS HANDLE      NO-UNDO.
DEFINE VARIABLE ix AS INTEGER     NO-UNDO.
DEFINE VARIABLE iRetorno AS INTEGER     NO-UNDO.

RUN persistente2.p PERSISTENT SET hprog.

RUN pi-calcula IN hprog (INPUT "catolica",
                         INPUT 55800,
                         OUTPUT iRetorno).
MESSAGE iRetorno VIEW-AS ALERT-BOX.


DO ix = 1 TO 5:
    RUN pi-resposta IN hprog.
END.

DELETE PROCEDURE hprog.
