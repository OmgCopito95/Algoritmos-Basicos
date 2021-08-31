// ORDENACION DE VECTORES POR INSERCION

procedure OrdenacionPorInsercion(var v: vector; dimL: integer);
var 
	i, j, dato: integer;
begin

	for i:= 2 to dimL do begin
   		actual:=v[i];
   		j:= i-1;
   		while (j > 0) and (v[j] > actual) do begin
     			v[j+1]:=v[j];
     			j := j-1;
     		end;
		v[j+1] := actual;
	end;
end;

 
