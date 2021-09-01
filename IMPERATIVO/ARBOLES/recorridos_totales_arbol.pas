// RECORRIDOS TOTALES DE UN ARBOL

// EN ORDEN (Imprime de menor a mayor - Para imprimir de mayor a menor, invierto la recursion)

procedure enOrden (a:arbol);
begin
	if (a <> nil) then begin
		enOrden(a^.HI);
		write('', a^.dato);
		enOrden(a^.HD);	
	end;	
end;

// POST ORDEN 

procedure postOrden (a:arbol);
begin
	if (a <> nil) then begin
		postOrden(a^.HI);
		postOrden(a^.HD);
		write('', a^.dato);
	end;	
end;

// PRE ORDEN (jerarquico) Primero va por los padres y despues por todos los hijos

procedure preOrden (a:arbol);
begin
	if (a <> nil) then begin
		write('', a^.dato);
		preOrden(a^.HI);
		preOrden(a^.HD);		
	end;	
end;
