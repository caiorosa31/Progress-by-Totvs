for-blk:
FOR EACH Customer 
    WHERE Customer.Country BEGINS "F" 
    AND   Customer.PostalCode BEGINS "7":
    DISPLAY Customer.CustNum 
            Customer.Name 
            Customer.Country 
            Customer.PostalCode.
END.
