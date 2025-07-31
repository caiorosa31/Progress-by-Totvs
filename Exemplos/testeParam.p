def var l-existe as logical NO-UNDO INITIAL FALSE.
DEFINE VARIABLE c-msg AS CHARACTER FORMAT "x(40)" NO-UNDO.

for each customer no-lock:
    disp customer.cust-num.
    ASSIGN c-msg = customer.NAME.
    run pi-processa (input customer.cust-num, 
                     INPUT-OUTPUT c-msg,
                     output l-existe).
    DISP l-existe c-msg.
end.

procedure pi-processa:
    def input  param p-num as integer no-undo.
    DEF INPUT-OUTPUT PARAM p-complemento AS CHAR NO-UNDO.
    def output param p-achou     as logical no-undo init no.
    
    for each order
        where order.cust-num = p-num no-lock:
        ASSIGN p-complemento = p-complemento 
            + " (" + STRING (order.order-date, "99/99/9999")
            + ")"
               p-achou = yes.
    end.
end procedure.
