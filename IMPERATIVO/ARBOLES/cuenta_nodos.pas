//CUENTA LOS NODOS DE UN ARBOL

function cuentaNodos(a:arbol):integer;
begin
  if(a=nil)then
    cuentaNodos:=0
  else
    cuentaNodos:=1+cuentaNodos(a^.HI)+cuentaNodos(a^.HD);
end;

