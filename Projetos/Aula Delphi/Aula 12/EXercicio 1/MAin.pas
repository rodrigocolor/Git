unit MAin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    grpCodData: TGroupBox;
    Label1: TLabel;
    edtDia: TEdit;
    edtMes: TEdit;
    lblMes: TLabel;
    edtAno: TEdit;
    lblAno: TLabel;
    btnCodificarData: TBitBtn;
    edtEdit: TEdit;
    lblData: TLabel;
    grpDecoData: TGroupBox;
    dtpDAta1: TDateTimePicker;
    btnDecoDAta: TBitBtn;
    edtDia1: TEdit;
    lblDia: TLabel;
    lblMes1: TLabel;
    edtMes1: TEdit;
    lblAno1: TLabel;
    edtAno1: TEdit;
    grpDiaAteHj: TGroupBox;
    dtpDiasAteHj: TDateTimePicker;
    lblDiasAteHj: TLabel;
    btnDiasAteHj: TBitBtn;
    grpFormatacaoDedata: TGroupBox;
    dtpDAtaFd: TDateTimePicker;
    lbl1: TLabel;
    dtpHora: TDateTimePicker;
    lblHora: TLabel;
    RadioGroup1: TRadioGroup;
    btnFormatar: TBitBtn;
    Edit1: TEdit;
    grpCronometro: TGroupBox;
    btnIinicia: TBitBtn;
    btnPara: TBitBtn;
    edtInicio: TEdit;
    lbl2: TLabel;
    lblp: TLabel;
    edtPara: TEdit;
    lblTm: TLabel;
    edtTmp: TEdit;
    edtDiasAtHoje: TEdit;
    procedure btnCodificarDataClick(Sender: TObject);
    procedure btnDecoDAtaClick(Sender: TObject);
    procedure btnDiasAteHjClick(Sender: TObject);
    procedure btnFormatarClick(Sender: TObject);
    procedure btnIiniciaClick(Sender: TObject);
    procedure btnParaClick(Sender: TObject);
  private
    { Private declarations }
    Gdate:Tdatetime;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCodificarDataClick(Sender: TObject);
begin
  edtEdit.text := DateToStr(encodeDate(strtoint(edtAno.text),
    strtoint(edtMes.text), strtoint(edtDia.text)));
end;

procedure TForm1.btnDecoDAtaClick(Sender: TObject);
var
  d, m, y: Word;
begin
  DecodeDate(dtpDAta1.DateTime, y, m, d);
  edtDia1.text := IntToStr(d);
  edtMes1.text := IntToStr(m);
  edtAno1.text := IntToStr(y);
end;

procedure TForm1.btnDiasAteHjClick(Sender: TObject);
Var Data: TDateTime;
tempo:currency;
begin
Data := now - dtpDiasAteHj.Date;
tempo=int(data);
edtDiasAtHoje.Text := floatToStr(tempo);
end;

procedure TForm1.btnFormatarClick(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0:
      Edit1.text := DateToStr(dtpDAtaFd.Date);
    1:
      Edit1.text := FormatDateTime('HH:MM:SS', dtpHora.DateTime);
    2:
      Edit1.text := FormatDateTime('DD', dtpDAtaFd.Date);
    3:
      Edit1.text := FormatDateTime('yyyy', dtpDAtaFd.Date);
    4:
      Edit1.text := FormatDateTime('MMMMMM', dtpDAtaFd.Date);
    5:
      Edit1.text := FormatDateTime('dddddd', dtpDAtaFd.Date);
    6:
      Edit1.text := DateToStr(dtpDAta1.Date)+' ' + FormatDateTime('hh:mm',
        dtpHora.DateTime);
    7:
      Edit1.text := FormatDateTime('MM', dtpDAtaFd.Date);
    8:
     Edit1.text := FormatDateTime('dddd',dtpDAtaFd.DateTime);
    9:
      Edit1.text := FormatDateTime('yyyy-mm-dd', dtpDAtaFd.Date);

  end;
end;

procedure TForm1.btnIiniciaClick(Sender: TObject);
begin
Gdate:=Time;
edtInicio.Text:= FormatDateTime('hh:mm:ss',Gdate);

end;

procedure TForm1.btnParaClick(Sender: TObject);
begin
edtPara.Text:= FormatDateTime('hh:mm:ss',now);
edtTmp.Text:= FormatDateTime('hh:mm:ss',Gdate - now )
end;

end.
