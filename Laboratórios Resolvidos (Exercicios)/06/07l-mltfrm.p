/* l-mltfrm.p */
define variable assmt-num as integer label "ord. num".
for-cust:
for each Customer:
    display Name with frame emp-frame down.
    assmt-num = 0.
    for-ord:
    for each Order of Customer:
        assmt-num = assmt-num + 1.
        display OrderNum OrderDate
            with frame assmt-frame 5 down column 40.
        display assmt-num with frame emp-frame.
    end.  /* for-ord */
    find SalesRep of Customer.
    display SalesRep.SalesRep Region
       with frame dept-frame column 40 side-labels 1 column. 
end.  /* for-cust */
