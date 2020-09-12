// BORRAR ELEMENTO DE UN ARBOL

procedure Borrar(x: elem; var a: arbol; var ok: boolean);
var
	aux: arbol;
begin
	if (a = nil) then
		ok := false
	else begin
		if (x < a^.dato) then	// BUSCO EN EL SUBARBOL IZQUIERDO
			Borrar (x, a^.HI, ok)
		else
			If (x > a^.dato) then	// BUSCO EN EL SUBARBOL DERECHO
				Borrar (x, a^.HD, ok)
			else begin
				ok := true;
				if (a^.HI = nil) then begin		// SOLO HIJO A DERECHA
					aux := a;
					a := a^.HD;
					dispose(aux)
				end
				else
					if (a^.HD = nil) then begin		// SOLO HIJO A IZQUIERDA
						aux := a;
						a := a^.HI;
						dispose(aux)
					end
					else begin		// DOS HIJOS. REEMPLAZO CON EL MENOR DE LA DERECHA
						aux := Minimo(a^.HD);
						a^.dato = aux^.dato;
						Borrar(a^.dato, a^.HD, ok);
					end
			end
end;