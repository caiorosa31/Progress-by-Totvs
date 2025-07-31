current-window:width = 251.
REPEAT WITH 1 COLUMN:
    PROMPT-FOR Customer.CustNum.
    FIND Customer USING CustNum.
    DISPLAY Customer with 1 column width 250.
    SET Customer with 1 column.
END.
