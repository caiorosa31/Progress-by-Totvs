def temp-table tt-dados no-undo like customer.

run testeParamTT2b.p (output table tt-dados).

for each tt-dados:
    disp tt-dados.cust-num
         tt-dados.name.
end.

