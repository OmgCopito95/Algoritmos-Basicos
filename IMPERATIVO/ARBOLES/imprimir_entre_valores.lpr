procedure imprimirEntreValores(a:arbol);
begin

	if(a<>nil)then
		if(a^.dato.legajo > 2803) and (a^.dato.legajo < 6982)then begin
			write(a^.dato.nombre);
			imprimirEntreValores(a^.HI)
			imprimirEntreValores(a^.HD)
		end
		else
			if(a^.dato.legajo < 2803)then
					imprimirEntreValores(a^.HD)
			else
				if(a^.dato.legajo > 6982) then
					imprimirEntreValores(a^.HI)
end;
