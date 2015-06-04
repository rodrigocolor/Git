unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, JvExControls,
  JvZoom, JvFullColorSpaces, JvFullColorCtrls, JvgCheckBox, JvSimScope,
  JvSimLogic, JvSimPID, Vcl.Imaging.pngimage, Vcl.ExtCtrls, JvExExtCtrls,
  JvImageRotate, JvAVICapture, JvComponentBase, JvSerialMaker, JvCipher,
  Vcl.ComCtrls, Vcl.TabNotBk, madExceptVcl, MetropolisUI.Tile, Vcl.Mask,
  JvExMask, JvToolEdit, JvMaskEdit;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    JvSimLight1: TJvSimLight;
    MadExceptionHandler1: TMadExceptionHandler;
    pnlLOL: TPanel;
    GroupBox1: TGroupBox;
    JvMaskEdit1: TJvMaskEdit;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
ShowMessage('Salvo com sucesso!!');
JvSimLight1.lit:= True;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  ShowMessage('Operacao cancelada!');
  JvSimLight1.Lit:= False;
  end;
end.
