/* l-col2.p */
define variable cust-rep as character format "x(26)".
define variable ord-date as date init today label "Data do Pedido".
update ord-date with side-labels centered row 2.
for-blk:
for each Order:
    find Customer of Order no-error.
    cust-rep = Customer.Name + " - " + Order.SalesRep. 
    display Order.OrderNum  at 10 column-label "Order!number"
            Order.OrderDate at 21 column-label "Order!date"
            Order.CustNum   at 34 column-label "Customer!number"
            cust-rep        at 46 column-label "Customer Name!sales rep"
            with centered.   
    if Order.OrderDate < ord-date then 
        color display messages Order.OrderNum Order.OrderDate 
                               Order.CustNum cust-rep.
end. /* for-blk */
