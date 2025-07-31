/* l-addchg.p */
current-window:width = 251.
repeat with 1 column:
   prompt-for Customer.CustNum.
   find Customer using Customer.CustNum no-error.
   if not available Customer then do:
      create Customer.
      assign Customer.CustNum.
   end.
   update Customer except Customer.CustNum with width 250.
end.
