/* l-rpt1.p */
define frame rpt-frame header today "relatorio detalhado de pedidos" at 30 skip(1).
output to l-rpt1.rpt page-size 20. 
for-Order:
for each Order, each OrderLine of Order 
  by Order.CustNum by Order.OrderNum by OrderLine.LineNum 
  with frame rpt-frame:
    find Customer of Order.
    find Item of OrderLine.
    display Order.OrderNum Order.OrderDate Customer.Name
            Item.ItemNum OrderLine.Qty Item.ItemName
            with stream-io.
end. /* for-Order */
output close.
