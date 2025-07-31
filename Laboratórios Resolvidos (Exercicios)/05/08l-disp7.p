/* l-disp7.p */
for each SalesRep:
    display SalesRep.RepName.
    for each Customer of SalesRep:
        display Customer.CustNum Customer.Name.
        for each Order of Customer, 
            each OrderLine of Order,
                 Item of OrderLine:
            display OrderLine.OrderDate OrderLine.Qty Item.ItemName. 
        end. 
    end. 
end.
