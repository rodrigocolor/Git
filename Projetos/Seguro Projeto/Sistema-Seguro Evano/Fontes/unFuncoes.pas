unit unFuncoes;

interface
 uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics;
function MD5(const texto: string): string;
function GetSerialMotherBoard: String;
implementation

uses
  IdHashMessageDigest;

function MD5(const texto: string): string;
var
  idmd5: TIdHashMessageDigest5;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  try
    result := idmd5.HashStringAsHex(texto);
  finally
    idmd5.Free;
  end;
end;
function GetSerialMotherBoard: String;
var
  a, b, c, d: LongWord;
begin
  asm push EAX
    push EBX
    push ECX
    push EDX
    mov eax, 1
    db $0F, $A2
    mov a, EAX
    mov b, EBX
    mov c, ECX
    mov d, EDX
    pop EDX
    pop  ECX
    pop  EBX
    pop EAX
  end;
  Result := IntToHex(a, 8) + '-' + IntToHex(b, 8) + '-' + IntToHex(c, 8) + '-' +
    IntToHex(d, 8);
end;

end.
