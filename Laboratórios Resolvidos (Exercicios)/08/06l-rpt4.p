/* l-rpt4.p */
define stream info-stream.
define stream bal-stream.
output stream info-stream to l-info4.rpt paged.
output stream bal-stream to l-bal4.rpt paged.
for-cust:
for each Customer
     break by Customer.SalesRep:
    display stream info-stream SalesRep CustNum Name City Country
        with frame Name-frame down stream-io.
    display stream bal-stream SalesRep CustNum Name CreditLimit Balance
        with frame sal-frame down stream-io.
    if last-of(Customer.SalesRep) then do:
       page stream info-stream.
       page stream bal-stream.
    end.
end.  /* for-cust */
output stream bal-stream close.
output stream info-stream close.
