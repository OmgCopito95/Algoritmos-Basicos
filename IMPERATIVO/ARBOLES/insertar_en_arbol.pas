// INSERTAR EN UN ARBOL

procedure Insertar(m: integer; var a: arbol);
var
	aux: arbol;
begin
	if (a = nil) then begin
		new(aux);
		aux^.dato := m;
		aux^.HI := nil;
		aux^.HD := nil;
		a := aux
	end
	else
		if (m > a^.dato) then 
			Insertar (m, a^.HD)
		else
			if (m < a^.dato) then
				Insertar (m, a^.HI);
			// else, es repetido
end;