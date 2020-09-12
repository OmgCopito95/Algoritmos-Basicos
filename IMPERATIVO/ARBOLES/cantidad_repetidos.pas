// CONTAR CANTIDAD DE VECES QUE APARECE UN ELEMENTO EN EL ARBOL

function Cantidad_Repetidos (a:arbol; x:integer): integer;
begin
	if (a = nil) then 
		Buscar := 0
	else
		if (x = a^.dato) then
			Buscar := (Buscar(a^.HI, x) + 1)
		else
			if (x < a^.dato) then
				Buscar := Buscar(a^.HI, x)
			else
				Buscar := Buscar(a^.HD, x)
end;