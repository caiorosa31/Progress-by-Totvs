USING PROGRESS.json.ObjectModel.JsonObject.
USING PROGRESS.json.ObjectModel.JsonArray.
USING Progress.Json.ObjectModel.ObjectModelParser.

DEFINE VARIABLE oObj     AS JsonObject        NO-UNDO.
DEFINE VARIABLE aList    AS JsonArray         NO-UNDO.
DEFINE VARIABLE lcTxt    AS LONGCHAR          NO-UNDO.
DEFINE VARIABLE myParser AS ObjectModelParser NO-UNDO.
DEFINE VARIABLE cTmp     AS CHARACTER   NO-UNDO.

FIX-CODEPAGE(lcTxt) = "utf-8":U.

lcTxt = "~{ ~"nome~": ~"Joao da Silva~", ~"cargo~": ~"Gerente~"~}".
myParser = NEW ObjectModelParser().
oObj = CAST(myParser:Parse(lcTxt), JsonObject) NO-ERROR.
delete object myParser.

cTmp = oObj:getJsonText().
MESSAGE oObj   SKIP cTmp
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
