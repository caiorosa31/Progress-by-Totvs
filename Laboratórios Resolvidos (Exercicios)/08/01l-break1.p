/*  l-break1.p */
for-SalesRep:
for each SalesRep, 
    each Customer of SalesRep
    break by SalesRep.SalesRep:
    display RepName Name 
      Balance format "$>,>>>,>>9" (total average maximum by SalesRep.SalesRep).
end.  /* for-SalesRep */
