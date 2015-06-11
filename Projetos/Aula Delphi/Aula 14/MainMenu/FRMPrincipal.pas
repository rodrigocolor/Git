unit FRMPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
//formas de cobrança
TFormaCobranca = (fcMensal,fcBimestral, fcTrimestral, fcSemestral, fcAnual,fcQuadrimestral);

// serviços que podem ser contratados
TServico = (sTelefone,sInternet,sTV,sAcademia);

// conjunto de serviços
TSetServico = set of TServico;

//contrato e seus dados
TContrato = record
   Numero: Integer;
   DataInicio: TDate;
   DataTerminio: TDate;
   FormaCobranca: TFormaCobranca;
   Servicos:  TsetServico;
   ValorParcela: Currency;
   NomeVivente: String;
   CPFVivente: Integer;

end;
  TfrmContrato = class(TForm)
    Label1: TLabel;
    btnTela: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dtpInicio: TDateTimePicker;
    Label7: TLabel;
    cmbCobranca: TComboBox;
    Label6: TLabel;
    dtpTermino: TDateTimePicker;
    edtContrato: TEdit;
    edtValorParcela: TEdit;
    ckbTelefone: TCheckBox;
    Label5: TLabel;
    ckbInternet: TCheckBox;
    ckbTV: TCheckBox;
    ckbAcademia: TCheckBox;
    Label8: TLabel;
    Label9: TLabel;
    edtNome: TEdit;
    edtCPF: TEdit;
    procedure btnTelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContrato: TfrmContrato;

implementation

 uses FRMCarne;
{$R *.dfm}

procedure TfrmContrato.btnTelaClick(Sender: TObject);
var
vContrato:TContrato;

begin
// lê os dados do contrato para o registro
vContrato.Numero := StrToInt(edtContrato.Text);
vContrato.DataInicio := dtpInicio.Date;
vContrato.DataTerminio := dtpTermino.Date;
vContrato.ValorParcela := StrToCurr(edtValorParcela.Text);
vContrato.NomeVivente := edtNome.Text;
vContrato.CPFVivente := StrToInt(edtCPF.Text);

if cmbCobranca.ItemIndex = 0 then
vContrato.FormaCobranca:=fcMensal;

if cmbCobranca.ItemIndex = 1 then
vContrato.FormaCobranca:= fcBimestral;

if cmbCobranca.ItemIndex = 2 then
vContrato.FormaCobranca:=fcTrimestral;

if cmbCobranca.ItemIndex = 3 then
vContrato.FormaCobranca:=fcSemestral;

if cmbCobranca.ItemIndex = 4 then
vContrato.FormaCobranca:=fcAnual;

if cmbCobranca.ItemIndex = 5 then
vContrato.FormaCobranca:=fcQuadrimestral;

////////////////////////////////////////////////////

if ckbTelefone.Checked then
vContrato.Servicos:=vContrato.Servicos+[sTelefone];


if ckbInternet.Checked then
vContrato.Servicos:=vContrato.Servicos+[sInternet];


if ckbTV.Checked then
vContrato.Servicos:=vContrato.Servicos+[sTV];


if ckbAcademia.Checked then
vContrato.Servicos:=vContrato.Servicos+[sAcademia];

// Monta o carnê
Formcarne := Tformcarne.Create(nil);
Formcarne.MontarCarne (vContrato);

// Exibe o formulário do carnê
Formcarne.ShowModal;
FreeAndNil(Formcarne);

end;
end.
