/* l-updrep.p */
define variable l-outro-rep as logical initial yes label
   "incluir/modifica outro representante?".
rep-blk:
repeat:
    prompt-for SalesRep.SalesRep with frame get-frame.
    find SalesRep where SalesRep.SalesRep = input SalesRep no-error.
    if not available SalesRep then 
    do-create:
    do:
        create SalesRep.
        assign SalesRep.
        message "novo representante criado!".
    end. /* do-create */
    update SalesRep except SalesRep.SalesRep
           with frame upd-frame 2 column.
    update l-outro-rep with frame another-frame.
    if l-outro-rep then
        next.
    else
        leave.
end. /* rep-blk */
