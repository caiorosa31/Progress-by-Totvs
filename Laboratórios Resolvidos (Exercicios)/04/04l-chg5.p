/* l-chg5.p */
current-window:width = 251.
define variable codigo like Customer.CustNum no-undo.
repeat with 1 column:
    update codigo.
    find Customer 
        where Customer.CustNum = codigo
        exclusive-lock no-error.
    update Customer except Customer.CustNum with width 250.
end.
