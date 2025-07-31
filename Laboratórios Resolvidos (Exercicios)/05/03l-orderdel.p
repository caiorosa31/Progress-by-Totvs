/* l-Orderdel.p */
define variable l-resp as logical no-undo.
for each Order with 1 column 1 down:
    display Order.
    message "Deseja eliminar o Pedido?" /*update l-resp*/.
    if l-resp then do:
        for each OrderLine of Order:
            delete OrderLine.
        end. 
        delete Order.
        message "Pedido Eliminado".
    end.
end.
