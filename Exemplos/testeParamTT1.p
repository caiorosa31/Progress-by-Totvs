def temp-table tt-dados no-undo like customer
    FIELD orderDate AS DATE
    FIELD repName   AS CHAR.

run pi-processa(output table tt-dados).

for each tt-dados:
    disp tt-dados.custnum
         tt-dados.name
         tt-dados.orderDate
         tt-dados.repName.
end.

procedure pi-processa:
    def output param table for tt-dados.
    for each customer no-lock:
        create tt-dados.
        buffer-copy customer to tt-dados.
        FIND FIRST order OF customer NO-LOCK NO-ERROR.
        IF  AVAIL order THEN DO:
            ASSIGN tt-dados.orderDate = order.OrderDate.
        END.
        FIND FIRST salesrep OF customer NO-LOCK NO-ERROR.
        IF  AVAIL salesrep THEN DO:
            ASSIGN tt-dados.repname = salesrep.repName.
        END.
    end.
end procedure.
