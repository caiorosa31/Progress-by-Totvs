current-window:width = 251.
first-blk:
REPEAT:
    PROMPT-FOR Customer.Name.
    for each Customer 
        whereCustomer.Name matches "" + INPUT Customer.Name + "*":
        DISPLAY Customer.CustNum 
                Customer.Name 
                Customer.SalesRep.
    end.
END. /* first-blk */
