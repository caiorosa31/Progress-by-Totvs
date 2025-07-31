for-blk:
FOR EACH Customer 
    BY Customer.Country 
    BY Customer.Name:
    DISPLAY Customer.CustNum Customer.Country Customer.Name Customer.CreditLimit.
END.
