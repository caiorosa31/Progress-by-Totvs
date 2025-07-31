DEF TEMP-TABLE tt-cliente NO-UNDO LIKE customer 
    FIELD rep-name AS character FORMAT "x(5)" LABEL "Representante"
    FIELD region      LIKE state.region        
    INDEX i-repres IS PRIMARY sales-rep.

FOR EACH customer NO-LOCK
    WHERE customer.sales-rep = "bbb":
    FIND salesrep 
        WHERE salesrep.sales-rep = customer.sales-rep
        NO-LOCK NO-ERROR.
    FIND state
        WHERE state.state = customer.state
        NO-LOCK NO-ERROR.
    CREATE tt-cliente.
    ASSIGN tt-cliente.cust-num = customer.cust-num
           tt-cliente.NAME     = customer.NAME
           tt-cliente.rep-name = salesrep.rep-name.
    IF AVAIL state THEN
           ASSIGN tt-cliente.region = state.region.
END.
INSERT tt-cliente EXCEPT comments 
      WITH 2 COLUMNS SIDE-LABELS.

FOR EACH tt-cliente NO-LOCK:
     DISP tt-cliente EXCEPT comments
              WITH 2 COLUMNS SIDE-LABELS.
END.
