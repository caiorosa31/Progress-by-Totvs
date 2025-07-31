DEFINE VARIABLE i-cust AS INTEGER     NO-UNDO.
DEFINE VARIABLE c-country AS CHARACTER   NO-UNDO.
DEFINE VARIABLE c-name AS CHARACTER   NO-UNDO.

def temp-table tt-dados no-undo like customer.

output to c:\tmp\exp.txt.
for each customer no-lock:
    export customer.
end.
output close.

input from c:\tmp\exp.txt.
repeat:
    /*create tt-dados.
     import tt-dados. */
    IMPORT i-cust c-country c-name.
    IF i-cust > 0 THEN DO:
        CREATE tt-dados.
        ASSIGN tt-dados.cust-num = i-cust
               tt-dados.country = c-country
               tt-dados.NAME = c-name.
    END.
end.
input close.

for each tt-dados:
    disp tt-dados.cust-num
         tt-dados.name.
end.
