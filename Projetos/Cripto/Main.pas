unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    mmoCrip: TMemo;
    mmoDEsc: TMemo;
    btnCrip: TBitBtn;
    btnDEsc: TBitBtn;
    edtKey: TEdit;
    Image1: TImage;
    procedure btnCripClick(Sender: TObject);
    procedure btnDEscClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCripClick(Sender: TObject);
var
Temp, cr:string;
  z,I,x,key: Integer;
  y: Integer;
  c: TColor;

begin
y:=0;
z:=0;
Image1.Picture.Bitmap.Create;
Image1.Picture.Bitmap.Width:=Image1.Width;
Image1.Picture.Bitmap.Height:= Image1.Height;
cr:= EmptyStr;
Temp:= mmoCrip.Text;
key:= int32.Parse(edtKey.Text);
for I := 1 to Length(Temp) do
begin
Application.ProcessMessages;
cr:=FormatFloat('000000', (Ord(temp[i])+key))+',' ;
mmoDEsc.Text:= mmodesc.text + cr;
if x >= image1.Height then
 x:=0;
if y >= image1.Width then
begin
 y:=0;
 x:=x+1;
end;
 c:= Ord(temp[i])+key;
Image1.Picture.Bitmap.Canvas.Pixels[y,x]:=  c;
y:=y+1;

end;





end;

procedure TForm1.btnDEscClick(Sender: TObject);
 var
Temp,tt, cr:string;
  I,x, key: Integer;
 tmp:Char;
begin
cr:= EmptyStr;
Temp:= mmoDEsc.Text;
key:= int32.Parse(edtKey.Text);
for I := 1 to Length(Temp) do
if Temp[i] <>',' then
tt:=tt+Temp[i]
else
begin
tmp:=Char( strtoint(tt)-key);
mmoCrip.Text:=mmoCrip.Text+ tmp ;
tt:=EmptyStr;
end;



end;

end.
