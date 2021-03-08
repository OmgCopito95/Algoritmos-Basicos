//CALCULA LA SUMA TOTAL DE UN VECTOR DE ENTEROS DE FORMA RECURSIVA

function suma(v:vector; dimL:integer):integer;
begin
  if (dimL = 0) then
     suma := 0
  else
      suma := suma(v,dimL-1) + v[dimL]
end;

