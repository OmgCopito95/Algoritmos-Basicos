//BUSQUEDA DICOTOMICA O BINARIA (PARA VECTORES ORDENADOS)

Procedure BusquedaBin( var v:Vector; var j:integer; dimL:integer, x:TipoElem);
   Var
     pri, ult, medio: integer;
   Begin
     j := 0;
     pri := 1;
     ult := dimL;
     medio := (pri + ult) div 2;
     While (pri <= ult) and (x <> v [medio]) do begin
            If (x < v [ medio ]) then
               ult:= medio -1
            else
               pri:= medio+1 ;
            medio := (pri + ult) div 2;
     end;
     If (pri <= ult) then
        j := medio
     else
        j := 0;
   End ;

