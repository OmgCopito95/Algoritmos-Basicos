//CALCULA EL ELEMENTO MINIMO EN UN VECTOR DE MANERA RECURSIVA

function minimo(v:vector; dimL,min:integer):integer; //min esta inicializado en 999
begin
  if (dimL = 0) then
     minimo := min
  else begin
    if(v[dimL] < min)then
       min:=v[dimL];
    minimo:=minimo(v,dimL-1,min);
  end;
end;

