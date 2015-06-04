unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    dtpDATA: TDateTimePicker;
    btnGo: TBitBtn;
    edtDataExt: TEdit;
    procedure btnGoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnGoClick(Sender: TObject);
begin
edtDataExt.Text:= FormatDateTime('dddddd', dtpDATA.DateTime);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
dtpDATA.DateTime:= Now;
end;

end.
