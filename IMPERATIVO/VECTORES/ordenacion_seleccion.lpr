// ORDENACION DE VECTORES POR SELECCION

Procedure Ordenar ( var v: numeros; dimLog: integer);
var
  i, j, p, item: integer;
begin
  for i:=1 to dimLog-1 do begin {busca el mínimo v[p] entre v[i] , ..., v[N] }
    p := i;
    for j := i+1 to dimLog do
      if v[ j ] < v[ p ] then
        p:=j;
    {intercambia v[i] y v[p] }
    item := v[ p ];
    v[ p ] := v[ i ];
    v[ i ] := item;
  end;
end;
