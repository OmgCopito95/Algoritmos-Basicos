// CALCULAR DIGITO MAXIMO CON RECURSION

procedure Digito_maximo(m: integer; var max: integer);
var
	dig: integer;
begin
	dig = m MOD 10;
	if (dig > max) then
		max := dig;
	m = m DIV 10;
	if (m <> 0) then	// CASO BASE
		Digito_maximo(m, max);
end;