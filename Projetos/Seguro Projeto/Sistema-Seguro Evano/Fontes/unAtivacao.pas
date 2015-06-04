unit unAtivacao;

interface

uses
  System.IniFiles, Winapi.Windows,  System.Types, System.SysUtils,
  System.Classes, Vcl.Forms;

type
  TCrypto = class
  private

    Const
    C1 = 33598;
    C2 = 24219;
    Chave = 16854;

  protected
    { protected declarations }
  public
    { public declarations }
    function Encode(dados: String): String;
    function Decode(dados: String): String;
    Function SerialNum(FDrive: String): String;
    procedure EnDecryptFile(INFName, OutFName: WideString; Chave: Word);
    function VerificaAtivacao: boolean;
    function GetMAC: string;

  end;

implementation

{ TCrypto }

uses unFuncoes;
function TCrypto.Decode(dados: String): String;
var
  I: Integer;
  Key: Word;
  Res: WideString;
begin
  Key := Chave;
  for I := 1 to length(dados) do
  begin
    Res := Res + Char(Byte(dados[I]) xor (Key shr 8));
    Key := (Byte(dados[I]) + Chave) * C1 + C2;
  end;
  Result := Res;
end;

function TCrypto.Encode(dados: String): String;
var
  I: Integer;
  Key: Word;
  Res: WideString;
begin
  Key := Chave;
  for I := 1 to length(dados) do
  begin
    Res := Res + Char(Byte(dados[I]) xor (Key shr 8));
    Key := (Byte(Res[I]) + Chave) * C1 + C2;
  end;
  Result := Res;
end;

procedure TCrypto.EnDecryptFile(INFName, OutFName: WideString; Chave: Word);
var
  InMS, OutMS: TMemoryStream;
  I: Integer;
  C: Byte;
begin
  InMS := TMemoryStream.Create;
  OutMS := TMemoryStream.Create;
  try
    InMS.LoadFromFile(INFName);
    InMS.Position := 0;
    for I := 0 to InMS.Size - 1 do
    begin
      InMS.Read(C, 1);
      C := (C xor not(ord(Chave shr I)));
      OutMS.Write(C, 1);
    end;
    OutMS.SaveToFile(OutFName);
  finally
    InMS.Free;
    OutMS.Free;
  end;
end;

function TCrypto.GetMAC: string;
var
  Lib: Cardinal;
  Func: function(GUID: PGUID): Longint; stdcall;
  GUID1, GUID2: TGUID;

begin
  Result := '';
  Lib := LoadLibrary('rpcrt4.dll');
  if Lib <> 0 then
  begin
    @Func := GetProcAddress(Lib, 'UuidCreateSequential');
    if Assigned(Func) then
    begin
      if (Func(@GUID1) = 0) and (Func(@GUID2) = 0) and
        (GUID1.D4[2] = GUID2.D4[2]) and (GUID1.D4[3] = GUID2.D4[3]) and
        (GUID1.D4[4] = GUID2.D4[4]) and (GUID1.D4[5] = GUID2.D4[5]) and
        (GUID1.D4[6] = GUID2.D4[6]) and (GUID1.D4[7] = GUID2.D4[7]) then
      begin
        Result := IntToHex(GUID1.D4[2], 2) + '-' + IntToHex(GUID1.D4[3], 2) +
          '-' + IntToHex(GUID1.D4[4], 2) + '-' + IntToHex(GUID1.D4[5], 2) + '-'
          + IntToHex(GUID1.D4[6], 2) + '-' + IntToHex(GUID1.D4[7], 2);
      end;
    end;
  end;
end;

function TCrypto.SerialNum(FDrive: String): String;
Var
  Serial: DWORD;
  DirLen, Flags: DWORD;
  DLabel: Array [0 .. 11] of Char;
  Lib: Cardinal;
  GUID1, GUID2: TGUID;
  Func: Function(GUID: PGUID): Longint; stdcall;
  x: WideString;
begin
  Try
    GetVolumeInformation(PChar(FDrive + ':\'), DLabel, 12, @Serial, DirLen,
      Flags, nil, 0);
    Result := IntToHex(Serial, 8);

    x := '';
    Lib := LoadLibrary('rpcrt4.dll');
    If not(Lib = 0) Then
      Try
        @Func := GetProcAddress(Lib, 'UuidCreateSequential');
        If Assigned(Func) Then
        Begin
          If (Func(@GUID1) = 0) and (Func(@GUID2) = 0) and
            (GUID1.D4[2] = GUID2.D4[2]) and (GUID1.D4[3] = GUID2.D4[3]) and
            (GUID1.D4[4] = GUID2.D4[4]) and (GUID1.D4[5] = GUID2.D4[5]) and
            (GUID1.D4[6] = GUID2.D4[6]) and (GUID1.D4[7] = GUID2.D4[7]) Then
          Begin
            x := IntToHex(GUID1.D4[2], 2) + '-' + IntToHex(GUID1.D4[3], 2) + '-'
              + IntToHex(GUID1.D4[4], 2) + '-' + IntToHex(GUID1.D4[5], 2) + '-'
              + IntToHex(GUID1.D4[6], 2) + '-' + IntToHex(GUID1.D4[7], 2);
            Result := 'Dsk' + Result + 'mc' + x;
          End;
        End;
      Finally
        FreeLibrary(Lib);
      end;
  Except
    Result := '';
  end;
end;

function TCrypto.VerificaAtivacao: boolean;
var
  vB: boolean;
  v1, v2: WideString;
  Tini: Tinifile;
  cr: TCrypto;
begin
  cr := TCrypto.Create;
  try
    cr.EnDecryptFile('.\conf.ecy', '.\conf.lib', 1024);
    Tini := Tinifile.Create('.\conf.lib');
    v1 := Tini.ReadString('Ativacao', 'MAC', cr.Encode(v1));
    v2 := cr.GetMAC;
    if (v1 = v2) then
      Result := True
    else
      Result := false;
      Result:= md5(GetSerialMotherBoard)  =  Tini.ReadString('Ativacao', 'MOBO', '');
  finally
    cr.Free;
    DeleteFile('.\conf.lib');
  end;
end;

end.
