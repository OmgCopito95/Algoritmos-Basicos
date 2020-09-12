// BUSCAR EN UN ARBOL. Devuelve un puntero de tipo arbol. Si no lo encuentra devuelve nil

function Buscar (a:arbol; x:integer): arbol;
begin
	if (a = nil) then 
		Buscar := nil
	else
		if (x = a^.dato) then
			Buscar := a
		else
			if (x < a^.dato) then
				Buscar := Buscar(a^.HI, x)
			else
				Buscar := Buscar(a^.HD, x)
end;