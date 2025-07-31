/* l-rpt2.p */
define frame header-frame header today "Relat¢rio Detalhado de Pedidos" at 30 skip(1) 
    with page-top no-box.
define frame footer-frame header skip(1) "Pag." page-number format "z9"
    with page-bottom no-box.
output to l-rpt2.rpt page-size 20.
for-Order: 
for each Order, each OrderLine of Order
  by Order.CustNum by Order.OrderNum by OrderLine.LineNum:
    view frame header-frame.
    view frame footer-frame.
    find Customer where Customer.CustNum = Order.CustNum.
    find Item where Item.ItemNum = OrderLine.ItemNum.
    display Order.OrderNum Order.OrderDate Customer.Name
            Item.ItemNum OrderLine.Qty Item.ItemName with stream-io no-box.
end. /* for-Order */
view frame footer-frame.
page.
output close.
