// CALCULAR MINIMO DE UN ARBOL

function Minimo (a:arbol): arbol;
begin
	if (a = nil) then
		Minimo := nil
	else
		if (a^.HI = nil) then
			Minimo := a
		else
			Minimo := Minimo(a^.HI); 
end;