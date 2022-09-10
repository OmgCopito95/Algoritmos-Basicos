// CONTAR CANTIDAD DE VECES QUE APARECE UN ELEMENTO EN EL ARBOL 

// POR MISMO CRITERIO DE CREACION
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


// POR DIFERENTE CRITERIO
function cant_repe (a:arbol; x:integer): integer;
begin
	if (a = nil) then
		cant_repe := 0;
	else
	begin
		if (a^.dato = x) then
			cant_repe := (cant_repe(a^.HI, x) + cant_repe(a^.HD, x) + 1) // SI EL DATO ES IGUAL A X, SE SUMA 1
		else
			cant_repe := (cant_repe(a^.HI, x) + cant_repe(a^.HD, x)) // SI EL DATO ES DISTINTO A X, NO SE SUMA NADA y SE CONTINUA RECORRIENDO EL ARBOL
	end;
end;
