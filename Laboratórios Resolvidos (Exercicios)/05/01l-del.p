/* l-del.p */
current-window:width = 251.
def variable l-resp as logical.
for each Customer exclusive-lock:
    disp Customer with 1 column width 250.
    message "deseja excluir este cliente?" update l-resp.
    if l-resp = yes then do:
       delete Customer.
       message "o cliente foi excluido !".
    end.
end.
