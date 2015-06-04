unit formMAin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    edtNome: TEdit;
    edtPrimeironome: TEdit;
    btnExtrairnome: TBitBtn;
    BitBtn2: TBitBtn;
    btnInc: TBitBtn;
    function VerificaStringCep(str: string): Boolean;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnExtrairnomeClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnIncClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Thead;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  VerificaStringCep(LabeledEdit1.Text);

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  ShowMessage(Copy(edtNome.Text, pos(' ', edtNome.Text, 1) + 1,
    length(edtNome.Text)));
end;

procedure TForm1.btnExtrairnomeClick(Sender: TObject);
begin
  ShowMessage(Copy(edtNome.Text, 0, pos(' ', edtNome.Text, 1)));
end;

procedure TForm1.btnIncClick(Sender: TObject);
var
  s: string;
begin
  // edtNome.Text := Copy(edtNome.Text, 0, pos(' ', edtNome.Text) - 1) + ' ' +
  // edtPrimeironome.Text + ' ' + Copy(edtNome.Text, pos(' ', edtNome.Text) + 1,
  // length(edtNome.Text));
  s := edtNome.Text;
  Insert(edtPrimeironome.Text + ' ', s, pos(' ', edtNome.Text, 1) + 1);
  edtNome.Text := s;

end;

function TForm1.VerificaStringCep(str: string): Boolean;
var
  x, I: Integer;
  head: TBuscaCep;
begin

  Result := pos('-', str) > 0;
  if not Result then
  begin
    LabeledEdit1.Text := EmptyStr;
    for I := 0 to length(str) + 1 do
      if I <= 5 then
        LabeledEdit1.Text := LabeledEdit1.Text + str[I]
      else if I > 6 then
        LabeledEdit1.Text := LabeledEdit1.Text + str[I - 1]
      else
        LabeledEdit1.Text := LabeledEdit1.Text + '-';
        datet
  end;

  Result := length(str) in [8, 9];
  if not Result then
  begin
    ShowMessage('O CEP sómente pode conter 8 caracteres (sem -) ou 9 (com - )');
    Exit;
  end;
  Delete(str, pos('-', str), 1);
  x := StrToInt(str);
  if Result then
    head := TBuscaCep.Create(False);
  head.inicio := x;
  head.fim := x;
  head.servico := sDevMedia;
  while head.flag <> 1 do
    Sleep(5);
  Label1.Caption := head.Cidade;
  if Label1.Caption = EmptyStr then
    ShowMessage('CEP não encontrado ou invalido!!!');
  head.Terminate;
end;

end.
