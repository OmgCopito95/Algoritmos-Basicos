// BUSCAR EN UN ARBOL RESPETANDO EL ORDEN. Devuelve un puntero de tipo arbol. Si no lo encuentra devuelve nil

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

// BUSCAR EN UN ARBOL SIN RESPETAR EL ORDEN. Devuelve un puntero de tipo arbol. Si no lo encuentra devuelve nil

function Buscar (a:arbol; x:integer): arbol;
begin
	if (a = nil) then
		Buscar := nil
	else
		if (x = a^.dato) then
			Buscar := a
		else
                    Buscar := Buscar(a^.HI, x) or Buscar(a^.HD, x);

end;


procedure buscar (a:arbol; x: integer; var ok:boolean);
begin
        if (a=nil)then
                ok:=false
        else
            if (a^.dato=x)then
                    ok:=true
            else begin
              buscar(a^.HI,x,ok);
              if (not ok) then
                      buscar(a^.HD,x,ok)
            end;

end;



















