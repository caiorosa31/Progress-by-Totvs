{prog-a.i NEW}

/*
def NEW SHARED temp-table tt-dados no-undo
    field codigo as integer
    field nome   as char.
*/

create tt-dados.
assign tt-dados.codigo = 1
       tt-dados.nome   = "fulano".
create tt-dados.
assign tt-dados.codigo = 2
       tt-dados.nome   = "teste".

ASSIGN c-nome = "totvs".

MESSAGE "antes - prog-a" c-nome VIEW-AS ALERT-BOX.

run prog-b.p.

MESSAGE "depois - prog-a" c-nome VIEW-AS ALERT-BOX.
