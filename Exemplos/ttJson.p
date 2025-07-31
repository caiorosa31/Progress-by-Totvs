DEFINE TEMP-TABLE ttCustomer NO-UNDO LIKE Customer.
FOR EACH Customer NO-LOCK:
    CREATE ttCustomer.
    BUFFER-COPY Customer TO ttCustomer.
END.
TEMP-TABLE ttCustomer:WRITE-JSON("FILE", 
    "c:/treinamento/customer.json", TRUE, ?, ?, YES).
EMPTY TEMP-TABLE ttCustomer.

OS-COMMAND NO-WAIT VALUE("notepad.exe c:/treinamento/customer.json").
