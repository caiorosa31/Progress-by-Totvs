/* l-disord.p */
rep-blk:
repeat:
    prompt-for Order.OrderNum with frame ord-frame.
    find Order using OrderNum.
    hide frame ord-frame.
    for-ordl:
    for each OrderLine of Order with frame ordl-frame 1 column:
        display OrderLine.
    end.  /* for-ordl */
end.  /* rep-blk */
