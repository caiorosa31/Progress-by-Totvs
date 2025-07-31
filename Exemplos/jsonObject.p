USING PROGRESS.json.ObjectModel.*.

SESSION:DEBUG-ALERT = YES.

DEF VAR oObj AS JsonObject NO-UNDO.
DEF VAR aRec AS JsonArray NO-UNDO.

aRec = NEW JsonArray().
oObj = NEW JsonObject().
oObj:add('nome', 'Joao da Silva').
oObj:add('cargo', 'Gerente').
oObj:add('area', 'Engenharia').
aRec:ADD(oObj).

oObj = NEW JsonObject().
oObj:add('nome', 'Gertrudes').
oObj:add('cargo', 'Consultora').
oObj:add('area', 'Consultoria').
aRec:ADD(oObj).

DEFINE VARIABLE cTxt AS CHARACTER   NO-UNDO.
cTxt = aRec:GetJsonText().

OUTPUT TO c:/treinamento/func.json.
PUT UNFORMATTED cTxt SKIP.
OUTPUT CLOSE.
OS-COMMAND NO-WAIT VALUE("notepad.exe c:/treinamento/func.json").

DEFINE VARIABLE ix     AS INTEGER     NO-UNDO.
DEFINE VARIABLE cNome  AS CHARACTER   NO-UNDO.
DEFINE VARIABLE cCargo AS CHARACTER   NO-UNDO.

DO  ix = 1 TO aRec:LENGTH:
    oObj = aRec:getJsonObject(ix).
    cNome = oObj:getCharacter("nome") NO-ERROR.
    cCargo = oObj:getCharacter("cargo") NO-ERROR.
    MESSAGE ix cNome SKIP
            cCargo
            VIEW-AS ALERT-BOX.
END.

/*
MESSAGE oObj SKIP cTxt SKIP OPSYS
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
*/
