//BUSCA EL ELEMENTO MAXIMO EN UNA LISTA

// VERSION SIN PARAMETRO MIN

function maximo(l:lista):integer;
var
    num_max: integer;
begin
  if (l<>nil) then begin  //si no llego al final
     num_max := maximo(l^.sig);  //llama a la recursion
     if(l^.dato > num_max)then   //si el valor de la lista es menor al maximo,actualiza maximo
        maximo := l^.dato
     else
        maximo := num_max;   //si no es menor, mantengo el del backtracking
  end
  else
     maximo := -1;  //si llego al final, o la lista esta vacia, "inicializo" el maximo
end;


// VERSION CON PARAMETRO MAX

function maximo(l:lista; max:integer):integer;  // viene inicializado en -1
begin
  if(l = nil)then
     maximo := max
  else begin
     if(l^.dato > max) then
        max := l^.dato;
     maximo := maximo(l^.sig,max);
  end;
end;



