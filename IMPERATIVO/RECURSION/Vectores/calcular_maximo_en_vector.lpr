//CALCULA EL ELEMENTO MAXIMO EN UN VECTOR DE MANERA RECURSIVA

function maximo(v:vector; dimL,max:integer):integer; //max esta inicializado en -999
begin
  if (dimL = 0) then
     maximo := max
  else begin
    if(v[dimL] > max)then
       max:=v[dimL];
    maximo:=maximo(v,dimL-1,max);
  end;
end;

