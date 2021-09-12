//BUSCA EL ELEMENTO MINIMO EN UNA LISTA

// VERSION SIN PARAMETRO MIN

function minimo(l:lista):integer;
var
    num_min: integer;
begin
  if (l<>nil) then begin  //si no llego al final
     num_min := minimo(l^.sig);  //llama a la recursion
     if(l^.dato < num_min)then   //si el valor de la lista es menor al minimo,actualiza minimo
        minimo := l^.dato
     else
        minimo := num_min;   //si no es menor, mantengo el del backtracking
  end
  else
     minimo := 999;  //si llego al final, o la lista esta vacia, "inicializo" el minimo
end;


// VERSION CON PARAMETRO MIN

function minimo(l:lista; min:integer):integer;  //viene inicializado en 999
begin
  if(l = nil)then
     minimo := min
  else begin
     if(l^.dato < min) then
        min := l^.dato;
     minimo := minimo(l^.sig,min);
  end;
end;



