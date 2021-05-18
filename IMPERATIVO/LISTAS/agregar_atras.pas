// AGREGAR AL FINAL EN UNA LISTA

// OPCION 1 - recorre la lista para encontrar el ultimo elemento

procedure agregarAtras(var l:lista; dato: integer);
var
	nue, act, ant: lista;
begin
	new(nue);
	nue^.dato := dato;
	ant := l;
	act := l;
	while (act <> nil) do begin
		ant := act;
		act := act^.sig;
	end;
	if (ant = act) then
		l := nue
	else
		ant^.sig := nue;
	nue^.sig := act;
end;

// OPCION 2 - con puntero al ultimo elemento

procedure agregarAtras(var l: lista; var ult: lista; dato: integer);
var
    nue:lista;
begin
	new(nue);
	nue^.dato := dato;
	nue^.sig := nil;
	if (l = nil) then
		l := nue
	else
		ult^.sig := nue;
	ult := nue;	
end;
