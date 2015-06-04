unit unFuncoes;

interface

function somar(valor1, valor2: real): real;
function multiplicar(valor1, valor2: real): real;
function dividir(valor1, valor2: real): real;
function subtrair(valor1, valor2: real): real;

type
  Operacoes = (soma, subtracao, divisao, multiplicacao, cl);

implementation

function multiplicar(valor1, valor2: real): real;
begin
  Result := valor1 * valor2;
end;

function somar(valor1, valor2: real): real;
begin
  Result := valor1 + valor2;
end;

function dividir(valor1, valor2: real): real;
begin
  Result := valor1 / valor2;
end;

function subtrair(valor1, valor2: real): real;
begin
  Result := valor1 - valor2;
end;

end.
