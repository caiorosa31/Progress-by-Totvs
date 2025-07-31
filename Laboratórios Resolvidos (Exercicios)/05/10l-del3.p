/* l-del3.p */
current-window:width = 251.
def variable l-resp  as logical no-undo.
def variable l-resp2 as logical no-undo.
for each Customer exclusive-lock:
    disp Customer with 1 column width 250.
    message "deseja excluir este cliente?" update l-resp.
    if l-resp = yes then do:
       find first Order of Customer no-lock no-error.
       if avail Order then do:
          message "O Cliente possui Pedidos, deseja elimina elimina-los ?" update l-resp2.
          if l-resp2 = no then
             next.
          for each Order of Customer exclusive-lock:
              delete Order.
          end.
          message "Os pedidos foram eliminados !".
       end.
       delete Customer.
       message "o cliente foi excluido !".
    end.
end.
