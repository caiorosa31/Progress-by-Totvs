/* l-break2.p */
for-SalesRep:
for each SalesRep, each Customer of SalesRep
  break by SalesRep.SalesRep:
    if first-of (SalesRep.SalesRep) or last-of (SalesRep.SalesRep) then 
        display RepName. 
    display Name  Balance (total maximum average by SalesRep.SalesRep). 
end. /* for-SalesRep */
