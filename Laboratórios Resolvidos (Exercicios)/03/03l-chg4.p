current-window:width = 251.
REPEAT WITH 1 COLUMN:
    PROMPT-FOR Customer.CustNum.
    FIND Customer USING CustNum.
    DISPLAY Customer with width 250.
    PROMPT-FOR Customer.
    ASSIGN Customer.
END.
