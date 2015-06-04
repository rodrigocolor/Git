unit unFormAtivacao;

interface

uses
  Windows, Messages, SysUtils, Variants,
  Classes, Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, unAtivacao, inifiles,
  unFormMenu;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Decry;
    procedure Cry;
  private
    procedure Abremain;

  var
    ss: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  main: TunFormMenuP;

implementation

{$R *.dfm}

uses unFuncoes;

procedure TForm1.Button2Click(Sender: TObject);
var
  cr: Tcrypto;
  I: Integer;
  a1, a2: String;
  ini: TIniFile;
begin
  ini := TIniFile.Create('.\conf.lib');
  try
    cr := Tcrypto.Create;
    a1 := cr.encode(Edit1.text);
    for I := 1 to 3 do
    begin
      a1 := cr.encode(a1);
    end;
    a2 := cr.decode(Edit2.text);
    for I := 1 to 2 do
    begin
      a2 := cr.decode(a2);
    end;
    if (a1 = a2) then
    begin
      ShowMessage('Sistema ativado!');

      ini.WriteString('Ativacao', 'A1',  cr.decode(a2));
      ini.WriteString('Ativacao', 'A2', cr.decode(a2));
      ini.WriteString('Ativacao', 'MC', Label1.Caption);
      ini.WriteString('Ativacao', 'MAC', cr.getMac);
         ini.WriteString('Ativacao', 'MOBO', md5(GetSerialMotherBoard));
      ini.WriteBool('Ativacao', 'status', true);
      Cry;
      Abremain;
    end
    else
    begin
      ShowMessage('Erro na ativação! Favor contatar o Adminstrador.');
    end;
  finally
    FreeAndNil(cr);
  end;
end;

procedure TForm1.Cry;
var
  xxx: Tcrypto;
begin
  xxx := Tcrypto.Create;
  try
    xxx.EnDecryptFile('.\conf.lib', '.\conf.ecy', 1024);
  finally
    xxx.Free;
  end;
  DeleteFile('.\conf.lib');
end;

procedure TForm1.Decry;
var
  xxx: Tcrypto;
begin
  xxx := Tcrypto.Create;
  try
    xxx.EnDecryptFile('.\conf.ecy', '.\conf.lib', 1024);
  finally
    xxx.Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  ini: TIniFile;
begin
  if not FileExists('.\conf.lib') = false then
  begin
    ini := TIniFile.Create('.\conf.lib');
    ini.WriteString('VersionWin', 'Xx32.dll', Win32CSDVersion);
    Cry;
    DeleteFile('.\conf.lib');
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  cr: Tcrypto;
  I: Integer;

  ini: TIniFile;
begin
  ini := TIniFile.Create('.\conf.lib');
  cr.EnDecryptFile('.\conf.ecy', '.\conf.lib', 1024);
  cr := Tcrypto.Create;
  ss := cr.SerialNum(ExtractFileDrive(Application.ExeName));
  Label1.Caption := ss;
  ini.WriteString('Ativacao', 'X', ss);
  if cr.VerificaAtivacao then
    Abremain;
  try
    ss := cr.encode(ss);
    for I := 1 to 6 do
    begin
      ss := cr.encode(ss);
    end;
    Edit1.text := ss;
  finally
    FreeAndNil(cr);
    FreeAndNil(ini);
  end;
end;

procedure TForm1.Abremain;
begin
  try
    main := TunFormMenuP.Create(nil);
    main.show();
  except
    on E: Exception do
      ShowMessage('Erro ao abrir Sistema: 0x2294 = ' + E.ToString);
  end;
end;

end.
