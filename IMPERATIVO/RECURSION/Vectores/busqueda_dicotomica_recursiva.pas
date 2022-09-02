//devuelve true o false dependiendo si el elemento "a" buscado existe o no en el vector

program busq_binaria;
const
     dimF = 10;

type
    vector = array [1..dimF] of integer;

procedure busqueda_binaria_recursiva(a:integer; var v:vector; var medio,inf,sup:integer; var ok:boolean);
begin
    if(inf <= sup)then begin
        medio := (inf+sup) div 2;
        if(a = v[medio]) then
            ok := true
        else begin
            if(a < v[medio]) then
                sup := medio - 1
            else
                inf := medio + 1;
            busqueda_binaria_recursiva(a,v,medio,inf,sup,ok)
        end
    end
    else
        ok := false;
end;

procedure cargarVector(var v:vector);
var
    i,num: integer;
begin
    for i:=1 to dimF do begin
        num:=Random(100);
        v[i]:=num;
    end;
end;

Procedure ordenarVector( var v: vector; dimLog: integer);
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

procedure imprimir_vector(v:vector);
var
    i:integer;
begin
    for i:=1 to dimF do begin
        writeln(v[i]);
    end;
end;

var
    v: vector;
    inf,sup, pos: integer;
    a: integer;
    ok: boolean;

begin

    Randomize;
    cargarVector(v);  //cargo el vector completo con valores random
    ordenarVector(v,dimF); //ordeno el vector con el algoritmo de seleccion. Para no modificar el código, le paso dimF
    imprimir_vector(v);  //imprimo el vector para ver qué datos tiene

    writeln('Ingrese numero a buscar: ');
    readln(a);

    inf:=1;  //primer indice por donde empieza a buscar
    sup:=dimF;  //porque en este caso está todo cargado
    busqueda_binaria_recursiva(a,v,pos,inf,sup,ok); //pos seria el medio, no hace falta inicializar. ok sera quien indique si existe o no
    writeln(ok);

    readln;
end.