unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, ActiveX,
  System.Win.ComObj, inifiles, Vcl.ComCtrls, JvExComCtrls, JvProgressBar,Thead;

type
  TForm1 = class(TForm)
    IdHTTP1: TIdHTTP;
    Edit1: TEdit;
    Buscar: TBitBtn;
    Memo1: TMemo;

    JvProgressBar1: TJvProgressBar;
    Button1: TButton;
    procedure BuscarClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    Thead:array [1..5]of TBuscaCep;
    Cancel: Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Service;

procedure TForm1.btnCancelClick(Sender: TObject);
begin
  JvProgressBar1.Enabled := False;
  Cancel := True;
end;

procedure TForm1.BuscarClick(Sender: TObject);
var

  I: Integer;
begin
cancel:= true;
for I := 1 to 5 do
Thead[i] := TBuscaCep.Create(False);
Thead[1].inicio:= 1000000;
Thead[1].fim:=2000000;
Thead[1].servico:= sDevMedia;
Thead[1].FreeOnTerminate:= True;
Thead[2].inicio:= 2000001;
Thead[2].fim:=3000000;
Thead[2].servico:= sDevMedia;
Thead[2].FreeOnTerminate:= True;
Thead[3].inicio:= 3000001;
Thead[3].fim:=4000000;
Thead[3].servico:= sDevMedia;
Thead[3].FreeOnTerminate:= True;
Thead[4].inicio:= 4000001;
Thead[4].fim:=5000000;
Thead[4].servico:= sDevMedia;
Thead[4].FreeOnTerminate:= True;
Thead[5].inicio:= 5000001;
Thead[5].fim:=6000000;
Thead[5].servico:= sDevMedia;
Thead[5].FreeOnTerminate:= True;
while Cancel do
begin
Application.ProcessMessages;
Memo1.text:=(Thead[1].cont + ' - ' +Thead[2].cont + ' - ' +Thead[3].cont + ' - ' +Thead[4].cont + ' - ' +Thead[5].cont );

end;
end;





procedure TForm1.Button1Click(Sender: TObject);
var
  I: Integer;
begin
for I := 1 to 5 do
Thead[i].Terminate;
Cancel:=False;
end;

end.
