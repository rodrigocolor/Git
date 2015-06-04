unit unFormAtivacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Button1: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button3: TButton;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);

    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses unAtivacao;

procedure TForm1.Button1Click(Sender: TObject);
var
  cr: Tcrypto;
  I: Integer;
  a1, a2: WideString;
begin
  try
    cr := Tcrypto.Create;
    a1 := cr.encode(Edit3.text);
    for I := 1 to 3 do
    begin
      a1 := cr.encode(a1);
    end;
    a2 := cr.decode(Edit4.text);
    for I := 1 to 2 do
    begin
      a2 := cr.decode(a2);
    end;
    Label9.Caption:=a1;
    Label10.Caption:=a2;

  finally
    FreeAndNil(cr);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  cr: Tcrypto;
  I: Integer;
  ss: WideString;
begin
  try
    cr := Tcrypto.Create;
    ss := Edit1.text;
    ss := cr.encode(ss);
    for I := 1 to 6 do
    begin
      ss := cr.encode(ss);
    end;
    Edit2.text := ss;
  finally
    FreeAndNil(cr);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  cr: Tcrypto;
begin
  cr := Tcrypto.Create;
  cr.EnDecryptFile('..\conf.lib', '..\conf.ecy', 1024);
  FreeAndNil(cr);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  cr: Tcrypto;
begin
  cr := Tcrypto.Create;
  cr.EnDecryptFile('..\conf.ecy', '..\conf.lib', 1024);
  FreeAndNil(cr);
end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  cr: Tcrypto;
  I: Integer;
begin
  try
    cr := Tcrypto.Create;
    Label1.Caption := cr.decode(Edit1.text);
    for I := 1 to 6 do

      Label1.Caption := cr.decode(Label1.Caption);
  finally
    FreeAndNil(cr);
  end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  cr: Tcrypto;
  I: Integer;
begin
  try
    cr := Tcrypto.Create;
    Label1.Caption := cr.decode(Edit1.text);
    for I := 1 to 6 do

      Label1.Caption := cr.decode(Label1.Caption);
  finally
    FreeAndNil(cr);
  end;
end;

procedure TForm1.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  cr: Tcrypto;
  I: Integer;
begin
  try
    cr := Tcrypto.Create;
    Label1.Caption := cr.decode(Edit1.text);
    for I := 1 to 6 do

      Label1.Caption := cr.decode(Label1.Caption);
  finally
    FreeAndNil(cr);
  end;
end;

end.
