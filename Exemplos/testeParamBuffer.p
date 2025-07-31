/* def buffer b-cust for customer. */
for each customer no-lock:
    run pi-processa(buffer customer).
end.

procedure pi-processa:
    def param buffer b-cust for customer.
    disp b-cust.cust-num
         b-cust.name.
end procedure.
