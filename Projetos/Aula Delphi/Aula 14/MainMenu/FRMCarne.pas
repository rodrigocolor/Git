unit FRMCarne;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,FRMPrincipal,System.DateUtils;

type
  TFormcarne = class(TForm)
    memCarne: TMemo;
    btnSalvar: TBitBtn;
    procedure btnSalvarClick(Sender: TObject);

  private
            //CTRL+SHIFT+C = Function no Form
    { Private declarations }
    function MontarServicos (vContrato: TContrato):string;

  public
            //CTRL+SHIFT+C = Procedure no Form
    { Public declarations }
    procedure MontarCarne (vContrato:TContrato);

  end;

var
  Formcarne: TFormcarne;

implementation

{$R *.dfm}

procedure TFormcarne.btnSalvarClick(Sender: TObject);
var
vCaminho:string;
begin
//Arquivo em txt
vCaminho:= ExtractFilePath(Application.ExeName)
+ 'MeuArquivo.txt';


end;


procedure TFormcarne.MontarCarne(vContrato: TContrato);
var
Vencimento:TDate;
NumeroParcela:Integer;
begin
 Vencimento := vContrato.DataInicio;
 NumeroParcela:=0;
//Incrementa o vencimento conforme forma cobranca

case vContrato.FormaCobranca of
  fcMensal:Vencimento:= IncMonth (Vencimento,1) ;
  fcBimestral:Vencimento:= IncMonth (Vencimento,2) ;
  fcTrimestral:Vencimento:= IncMonth (Vencimento,3) ;
  fcSemestral:Vencimento:= IncMonth (Vencimento,6) ;
  fcAnual:Vencimento:= IncYear (Vencimento,1) ;
  fcQuadrimestral:Vencimento:=IncMonth(Vencimento,4);
end;

  //limpa o memo
memCarne.Lines.Clear;

 // adcionar Contrato  ao memo

 memCarne.Lines.Add('------------------------------------------------------------');

   memCarne.Lines.Add('Número do Contrato:  '+ IntToStr (vContrato.Numero ));

  // adicionar datas

   memCarne.Lines.Add('Início: '+ DateToStr (vContrato.DataInicio ) + ('    Data Término: '+ DateToStr (vContrato.DataTerminio)));

   // adicionar servicos ao memo
     memCarne.Lines.Add('Serviços: '+ MontarServicos (vContrato));

while Vencimento <= vContrato.DataTerminio do
Begin
//Incrementa o numero da parcela
Inc(NumeroParcela);

      memCarne.Lines.Add('Número da Parcela: ' +IntToStr (NumeroParcela)+
      '    Valor :'+ FormatFloat('R$ #, 0,00',vContrato.ValorParcela)+
      '    Vencimento: ' + DateToStr (Vencimento));


  case vContrato.FormaCobranca of
  fcMensal:Vencimento:= IncMonth (Vencimento,1) ;
  fcBimestral:Vencimento:= IncMonth (Vencimento,2) ;
  fcTrimestral:Vencimento:= IncMonth (Vencimento,3) ;
  fcSemestral:Vencimento:= IncMonth (Vencimento,6) ;
  fcAnual:Vencimento:= IncYear (Vencimento,1) ;
  fcQuadrimestral:Vencimento:=IncMonth(Vencimento,4);

end;
end;
   memCarne.Lines.Add('Nome do Vivente: ' + vContrato.NomeVivente);

   memCarne.Lines.Add('CPF: '+ CurrToStr(vContrato.CPFVivente));

 memCarne.Lines.Add('------------------------------------------------------------');
end;

function TFormcarne.MontarServicos(vContrato: TContrato): string;
begin

Result := '';
if sTelefone in vContrato.Servicos then
Result:= 'Telefone';

if sInternet in vContrato.Servicos then
Begin
      if Result<> '' then
            Result := Result + ', ';
               Result:= Result + 'Internet';
                        end;

if sTV in vContrato.Servicos then
Begin
      if Result<> '' then
            Result := Result + ', ';
               Result:= Result + 'TV';
                        end;

if sAcademia in vContrato.Servicos then
Begin
      if Result<> ''then
            Result := Result + ', ';
               Result:= Result + 'Academia';
                        end;

end;

end.
