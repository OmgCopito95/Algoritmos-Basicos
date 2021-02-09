program registros;

type
    cadena10 = String[10];

    persona = record
      nombre: cadena10;
      apellido: cadena10;
      edad: integer;
      dni: integer;
      telefono: integer;
    end;

var
  p: persona;

begin
  writeln('Ingrese los datos de la persona');
  write('Ingrese nombre: ');
  readln(p.nombre);
  write('Ingrese apellido: ');
  readln(p.apellido);
  write('Ingrese edad: ');
  readln(p.edad);
  write('Ingrese dni: ');
  readln(p.dni);
  write('Ingrese telefono: ');
  readln(p.telefono);

  writeln('Se ha cargado la persona con exito. Estos son los datos:');
  writeln('Nombre: ',p.nombre);
  writeln('Apellido: ',p.apellido);
  writeln('Edad: ',p.edad);
  writeln('Dni: ',p.dni);
  writeln('Telefono: ',p.telefono);

  readln;
end.

