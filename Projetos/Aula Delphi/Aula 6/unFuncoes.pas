unit unFuncoes;

interface

function somar(valor1, valor2: Integer): Integer;
function multiplicar(valor1, valor2: Real): Real;
function dividir(valor1, valor2: Real): Real;
function subtrair(valor1, valor2: Real): Real;

implementation

function multiplicar(valor1, valor2: Real): Real;
begin
  Result := valor1 * valor2;
end;

function somar(valor1, valor2: Integer): Integer;
begin
  Result := valor1 + valor2;
end;

function dividir(valor1, valor2: Real): Real;
begin
  Result := valor1 / valor2;
end;

function subtrair(valor1, valor2: Real): Real;
begin
  Result := valor1 - valor2;
end;

end.
