/* l-del2.p */
current-window:width = 251.
def variable l-resp as logical no-undo.
for each Customer:
   disp Customer with 1 column width 250.
   message "deseja excluir este cliente?" update l-resp.
   if l-resp = yes then do:
      find first Order of Customer no-lock no-error.
      if avail Order then do:
         message "O Cliente n∆o pode ser eliminado, possui Pedidos !".
         next.
      end.
      delete Customer.
      message "o cliente foi excluido !".
   end.
end.
