ASSIGN CURRENT-WINDOW:WIDTH=200.
DEF VAR icont AS INTEGER NO-UNDO.
DEF VAR msg AS CHAR NO-UNDO FORMAT "x(10)".
DEF STREAM sRelat.
OUTPUT STREAM sRelat TO c:\tmp\relat.txt PAGE-SIZE 30.
DEF FRAME f-cab HEADER
    "Relatorio de pedidos" 
    "Pag.:" TO 98 
    PAGE-NUMBER(sRelat) FORMAT "99999" TO 110
    WITH CENTERED PAGE-TOP WIDTH 150.
DEF FRAME f-rodape HEADER
    FILL("=", 150) FORMAT "x(130)"
    WITH PAGE-BOTTOM WIDTH 152 STREAM-IO.
VIEW STREAM sRelat FRAME f-cab.
VIEW STREAM sRelat FRAME f-rodape.
for each order NO-LOCK
    break by order.cust-num
          by order.order-num:
    if  first-of(order.cust-num) then do:
        find customer of order no-lock no-error.
        if  avail customer THEN DO:
            disp STREAM sRelat 
                customer.cust-num customer.name 
                with frame f-x.
        END.
    end.
    disp STREAM sRelat order 
        except order.cust-num order.instructions order.terms
        with frame f-x 10 DOWN WIDTH 150 STREAM-IO.
    ASSIGN icont = icont + 1.
    IF LAST-OF(order.cust-num) THEN DO:
        DISP STREAM sRelat "SubTotal=" + String(icont) @ msg 
             WITH FRAME f-x.
        DOWN 1 STREAM sRelat WITH FRAME f-x.
        ASSIGN icont = 0.
    END.
end.
OUTPUT STREAM sRelat CLOSE.
OS-COMMAND NO-WAIT VALUE("notepad c:\tmp\relat.txt").

