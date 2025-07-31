CURRENT-WINDOW:WIDTH = 251.
DEFINE VARIABLE iCont AS INT       NO-UNDO LABEL "total".
FOR EACH customer 
        BREAK BY customer.SalesRep:
        IF FIRST-OF(customer.SalesRep) THEN DO:
            FIND FIRST salesrep 
                WHERE salesrep.salesrep = customer.salesrep
                NO-LOCK NO-ERROR.
            IF  AVAIL salesrep THEN DO:
                DISPLAY customer.SalesRep
                        salesrep.repname
                        WITH FRAME f-x WIDTH 250 DOWN.
            END.
        END.
        DISP customer.custnum
            customer.NAME
            WITH FRAME f-x.
        ASSIGN iCont = iCont + 1.

        IF  LAST-OF(customer.salesrep) THEN DO:
            DISP iCont WITH FRAME f-x.
            ASSIGN iCont = 0.
        END.
END.
