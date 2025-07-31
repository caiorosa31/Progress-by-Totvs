/* prog-b */
{prog-a.i}
/*
def SHARED temp-table tt-dados no-undo
    field codigo as integer
    field nome   as char.
*/
for each tt-dados no-lock:
    disp tt-dados.
end.

MESSAGE "prog-b" c-nome VIEW-AS ALERT-BOX.

ASSIGN c-nome = "treinamento progress".
