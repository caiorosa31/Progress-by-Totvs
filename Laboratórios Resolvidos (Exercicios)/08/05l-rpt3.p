/* l-rpt3.p */
define stream info-stream.
define stream bal-stream.
output stream info-stream to l-info3.rpt paged.
output stream bal-stream to l-bal3.rpt paged.
for-cust:
for each Customer:
    display stream info-stream CustNum Name City Country
        with frame Name-frame down stream-io.
    display stream bal-stream CustNum Name SalesRep CreditLimit Balance
        with frame sal-frame down stream-io.
end.  /* for-cust */
output stream info-stream close.
output stream bal-stream close.
