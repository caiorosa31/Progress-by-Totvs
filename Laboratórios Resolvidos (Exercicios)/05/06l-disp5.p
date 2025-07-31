/* l-disp5.p */
rep-blk:
repeat:
    prompt-for Item.ItemNum.
    find Item using Item.ItemNum.
    display Item.ItemNum Item.ItemName Item.Price Item.OnHand.
    for-Order:
    for each OrderLine where OrderLine.ItemNum = Item.ItemNum
      by OrderLine.Qty descending:
        find Order of OrderLine.
        display Order.OrderNum Order.OrderDate OrderLine.Qty.
    end. /* for-Order */
end. /* rep-blk */
