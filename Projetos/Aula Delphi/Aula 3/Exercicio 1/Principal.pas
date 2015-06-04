unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    lblNome: TLabel;
    edtSexo: TEdit;
    rgSexo: TRadioGroup;
    btnCm: TButton;
    procedure btnCmClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.btnCmClick(Sender: TObject);
begin
if rgSexo.ItemIndex =0  then
ShowMessage(edtSexo.Text + ' é do sexo masculino');
if rgSexo.ItemIndex =1  then
ShowMessage(edtSexo.Text + ' é do sexo feminino');

end;


end.
