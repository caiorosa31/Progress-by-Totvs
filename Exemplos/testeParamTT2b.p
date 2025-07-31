def temp-table tt-dados no-undo like customer.

def output param table for tt-dados.

for each customer no-lock:
    create tt-dados.
    buffer-copy customer to tt-dados.
end.

