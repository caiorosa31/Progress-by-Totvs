DEFINE QUERY qr-cust FOR customer SCROLLING.

DEFINE VARIABLE iPos AS INTEGER FORMAT "9" NO-UNDO.

DISP "1-primeiro" AT 10
     "2-anterior" AT 10
     "3-proximo"  AT 10
     "4-ultimo"   AT 10
     iPos         AT 10
     WITH SIDE-LABELS FRAME f-dados.

OPEN QUERY qr-cust FOR EACH customer. // WHERE customer.creditlimit > 15000.

GET FIRST qr-cust.
REPEAT:     
    UPDATE iPos WITH FRAME f-dados.
    IF iPos = 1 THEN DO:
        GET FIRST qr-cust.
    END.
    IF iPos = 2 THEN DO:
        GET PREV qr-cust.
    END.
    IF iPos = 3 THEN DO:
        GET NEXT qr-cust.
    END.
    IF iPos = 4 THEN DO:
        GET LAST qr-cust.
    END.
    IF  AVAIL customer THEN DO:
         DISP customer.custnum
              customer.NAME 
              customer.creditlimit
              WITH FRAME f-cust.
    END.
END.
    

