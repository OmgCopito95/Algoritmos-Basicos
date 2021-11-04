// calcula promedio de un vector de persona con campo nombre y numero de legajo, de manera recursiva

program promedio_vector;

//constante para la dimension del vector
const DIM = 5;

type
    persona = record
        nombre: string[10];
        legajo: integer;
    end;

    vector = array[1..DIM] of persona;

// carga vector de persona con valores random

    procedure cargar_vector(var v: vector);
    var
        i: integer;
    begin
        Randomize;
        for i := 1 to DIM do
        begin
            v[i].nombre := 'nombre';
            v[i].legajo := random(100);
        end;
    end;

    // imprime vector
    procedure imprimir_vector(v: vector);
    var
        i: integer;
    begin
        for i := 1 to DIM do
        begin
            writeln(v[i].nombre, ' ', v[i].legajo, ' ');
        end;
        writeln;
    end;

//calcula promedio de un vector de manera recursiva
    function calcular_promedio(v:vector; i: integer): real;
    begin
        if(i <= DIM)then
          calcular_promedio:= v[i].legajo / DIM + calcular_promedio(v,i+1);
    end;


// programa principal

    var
        v: vector;
        prom: real;
    begin
        cargar_vector(v);
        imprimir_vector(v);
        prom := calcular_promedio(v, 1);
        //imprime promedio con dos digitos
        writeln('promedio: ', prom:2:2);
        readln;
    end.


