// ORDENACION DE VECTORES POR SELECCION

Procedure Ordenar ( var v: numeros; dimLog: integer);
var
  i, j, p, item: integer;
begin
  for i:=1 to dimLog-1 do begin {busca el mínimo v[p] entre v[i] , ..., v[N] }
    p := i;
    for j := i+1 to dimLog do
      if v[ j ] < v[ p ] then     //ordena de menor a mayor. Para ordenar de mayor a menor, invertir el signo
        p:=j;
    {intercambia v[i] y v[p] }
    item := v[ p ];
    v[ p ] := v[ i ];
    v[ i ] := item;
  end;
end;

// EJEMPLO DE COMO SERIA SI EL VECTOR ES DE REGISTROS
// ordena un vector de alumnos de menor a mayor por codigo de alumno
Procedure Ordenar ( var v: vector; dimLog: integer);
var
  i, j, p: integer;
  item: alumno;   //item es del tipo del registro
begin
  for i:=1 to dimLog-1 do begin {busca el mínimo v[p] entre v[i] , ..., v[N] }
    p := i;
    for j := i+1 to dimLog do
      if v[j].codigo_alumno < v[p].codigo_alumno then   // se debe acceder al campo del registro por el cual se desea ordenar el vector
        p:=j;
    {intercambia v[i] y v[p] }
    item := v[p];
    v[p] := v[i];
    v[i] := item;
  end;
end;

