unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  madExceptVcl;

type
  TForm1 = class(TForm)
    lblN: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edtNome: TEdit;
    edtSobrenome: TEdit;
    rgSexo: TRadioGroup;
    cbbProfissao: TComboBox;
    lbl1: TLabel;
    CheckBox1: TCheckBox;
    mmoResumo: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    lblCaracteres: TLabel;
    lblLinhas: TLabel;
    madExcept1: TMadExceptionHandler;
    btnResumo: TBitBtn;
    lblEmail: TLabel;
    edtEmail: TEdit;
    Button1: TButton;
    procedure btnResumoClick(Sender: TObject);
    procedure mmoResumoChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnResumoClick(Sender: TObject);
begin
  mmoResumo.Lines.Add('Nome: ' + edtNome.Text + ' ' + edtSobrenome.Text);
  if rgSexo.ItemIndex = 0 then
    mmoResumo.Lines.Add('Sexo: Masculino')
  else
    mmoResumo.Lines.Add(' Sexo: Feminino');
  mmoResumo.Lines.Add(cbbProfissao.Text);
  mmoResumo.Lines.Add('Email: ' + edtEmail.Text);
  if CheckBox1.Checked then
    mmoResumo.Lines.Add('Tem carro: Sim')
  else
    mmoResumo.Lines.Add('Tem carro: Não');

  mmoResumo.Lines.Add('-------------------------------------');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
mmoResumo.Lines.SaveToFile('D:\User\Documentos\Temp\TTT.txt');
end;

procedure TForm1.mmoResumoChange(Sender: TObject);
begin
lblLinhas.Caption:= inttostr(mmoResumo.Lines.Count);
lblCaracteres.Caption:= IntToStr(Length(mmoResumo.Lines.Text));
end;

end.
