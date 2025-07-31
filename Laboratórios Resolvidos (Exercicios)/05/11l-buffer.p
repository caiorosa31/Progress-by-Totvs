/* l-buffer.p */
def var l-tem-rep as log format "Sim/NÆo" no-undo.
def buffer b-cust for Customer.
for each Customer
      by Customer.CreditLimit:
    find first b-cust 
        where b-cust.CreditLimit = Customer.CreditLimit 
        and   b-cust.CustNum <> Customer.CustNum no-error.
    assign l-tem-rep = avail b-cust.
    disp Customer.CustNum
         Customer.Name
         Customer.CreditLimit
         l-tem-rep label "Outro Cli".
end.
