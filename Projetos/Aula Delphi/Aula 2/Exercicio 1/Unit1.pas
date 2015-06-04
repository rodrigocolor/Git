unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    btnHelloWorld: TBitBtn;
    procedure btnHelloWorldClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnHelloWorldClick(Sender: TObject);
begin
MessageBox(0, 'Hello world', 'XXX', MB_ICONASTERISK or MB_OK or MB_NOFOCUS);
end;
end.
