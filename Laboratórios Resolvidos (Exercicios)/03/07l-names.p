/* s-Names.p */
first-blk:
REPEAT:
    PROMPT-FOR Customer.Name.
    FIND FIRST Customer 
        WHERE Customer.Name BEGINS INPUT Customer.Name
        NO-LOCK NO-ERROR.
    DISPLAY Customer.CustNum 
            Customer.Name 
            Customer.Country.

    second-blk:
    REPEAT:
        FIND NEXT Customer NO-LOCK NO-ERROR.
        DISPLAY Customer.CustNum Customer.Name Customer.Country.
    END. /* second-blk */
END. /* first-blk */
