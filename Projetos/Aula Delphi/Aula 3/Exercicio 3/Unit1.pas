unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    mmoResultado: TMemo;
    btnCalc: TBitBtn;
    edtv1: TEdit;
    edtV2: TEdit;
    procedure btnCalcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCalcClick(Sender: TObject);
var
  resutSingle: single;
  result: Real;
  resultDouble: double;
  resultExtend: Extended;
  ResultCurrency: currency;
  val1, val2: Integer;
begin
  val1 := strtoint(edtv1.Text);
  val2 := strtoint(edtV2.Text);
  resutSingle := val1 / val2;
  result := val1 / val2;
  resultDouble := val1 / val2;
  resultExtend := val1 / val2;
  ResultCurrency := val1 / val2;
  mmoResultado.Lines.add('Single: ' + FloatToStr(resutSingle));
  mmoResultado.Lines.add('Real:' + FloatToStr(result));
  mmoResultado.Lines.add('Double: ' + FloatToStr(resultDouble));
  mmoResultado.Lines.add('Extend: ' + FloatToStr(resultExtend));
  mmoResultado.Lines.add('Currency: ' + FloatToStr(ResultCurrency));

end;

end.
