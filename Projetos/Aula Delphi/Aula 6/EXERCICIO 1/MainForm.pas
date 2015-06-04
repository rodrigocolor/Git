unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, unFuncoes;

type
  TForm1 = class(TForm)
    btnSete: TSpeedButton;
    btnOito: TSpeedButton;
    btnNove: TSpeedButton;
    btnDividir: TSpeedButton;
    btnQuatro: TSpeedButton;
    btnCinco: TSpeedButton;
    btnSeis: TSpeedButton;
    btnMais: TSpeedButton;
    btnUm: TSpeedButton;
    btnDois: TSpeedButton;
    btnTres: TSpeedButton;
    btnIgual: TSpeedButton;
    Edit1: TEdit;
    btnMunti: TSpeedButton;
    btnMenos: TSpeedButton;
    btnPonto: TSpeedButton;
    BitBtn16: TSpeedButton;
    btnZero: TSpeedButton;
    procedure Operacao(Sender: TObject);
    procedure BtnNumeroClick(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure ClearVariaveis;

  var
    Numero1, Numero2: Real;
    op: Operacoes;
    apagarAoClicar: Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn16Click(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TForm1.btnIgualClick(Sender: TObject);
begin
  if apagarAoClicar = False then
  begin
    Numero2 := StrToFloat(Edit1.Text);
  end;
  case op of
    soma:
      Numero1 := somar(Numero1, Numero2);
    subtracao:
      Numero1 := subtrair(Numero1, Numero2);
    divisao:
      Numero1 := dividir(Numero1, Numero2);
    multiplicacao:
      Numero1 := multiplicar(Numero1, Numero2);
    cl:
      Numero1 := Numero2;
  end;
  apagarAoClicar := True;
  Edit1.Text := FloatToStr(Numero1);
end;

procedure TForm1.BtnNumeroClick(Sender: TObject);
begin
  if apagarAoClicar then
    ClearVariaveis;
  apagarAoClicar := False;
  Edit1.Text := Edit1.Text + TButton(Sender).Caption;
end;

procedure TForm1.ClearVariaveis;
begin
  Edit1.Clear;
  Numero2 := 0;
  op := cl;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  apagarAoClicar := False;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0']) then
    Edit1.Text := Edit1.Text + Key
  else
  begin
    if apagarAoClicar then
      ClearVariaveis;
    apagarAoClicar := False;
    if Edit1.Text <> EmptyStr then
      Numero1 := StrToFloat(Edit1.Text);
    if Key = '/' then
      op := divisao;
    if Key = '+' then
      op := soma;
    if Key = '*' then
      op := multiplicacao;
    if Key = '-' then
      op := subtracao;
    Edit1.Clear;
  end;
end;

procedure TForm1.Operacao(Sender: TObject);
begin
  if apagarAoClicar then
    ClearVariaveis;
  apagarAoClicar := False;
  if Edit1.Text <> EmptyStr then
    Numero1 := StrToFloat(Edit1.Text);
  if TButton(Sender).Caption = '/' then
    op := divisao;
  if TButton(Sender).Caption = '+' then
    op := soma;
  if TButton(Sender).Caption = '*' then
    op := multiplicacao;
  if TButton(Sender).Caption = '-' then
    op := subtracao;
  Edit1.Clear;
end;

end.
