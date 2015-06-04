unit TCC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  ImageProcessingPrimitives;

type
  TBancoBitmap = class(TForm)
    imgPreview: TImage;
    btnConv: TBitBtn;
    btnSalvar: TBitBtn;
    mmoTexto: TMemo;
    Label1: TLabel;
    btnINI: TBitBtn;
    btnINIIMG: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnConvClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnINIClick(Sender: TObject);
    procedure TXTBMP;
    procedure btnINIIMGClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Bitmap: TBitmap;
  end;

var
  BancoBitmap: TBancoBitmap;

implementation

uses
  System.IniFiles;

{$R *.dfm}

procedure TBancoBitmap.BitBtn1Click(Sender: TObject);
var
  I: Integer;
  Texto: string;
  X, a, l: Integer;
  RGB: TRGBTriple;
  t: Boolean;
  Str: TStringList;
begin
  a := 0;
  Str := TStringList.Create;
  for l := 1 to 20 do
  begin
    for a := 0 to 20 do
    begin
      RGB := ColorToRGBTriple(imgPreview.Picture.Bitmap.Canvas.Pixels[l, a]);
      // if RGB.rgbtBlue <>255 then
      Texto := Texto + char(RGB.rgbtBlue);
      // if RGB.rgbtGreen <>255 then
      Texto := Texto + char(RGB.rgbtgreen);
      // if RGB.rgbtred <>255 then
      Texto := Texto + char(RGB.rgbtred);
    end;
    Str.Add(Texto);
    Texto := '';
  end;
  mmoTexto.Lines := Str;
end;

procedure TBancoBitmap.BitBtn2Click(Sender: TObject);
begin
  showmessage(char(65));
  showmessage(IntToStr(Ord('A')));
end;

procedure TBancoBitmap.btnConvClick(Sender: TObject);
var
  I: Integer;
  Texto: string;
  X, a, l: Integer;
  RGB: TRGBTriple;
  t: Boolean;
begin
  FormCreate(Self);
  a := 0;
  t := True;
     Texto := Texto + mmoTexto.Lines.Text;
//  while t do
X:=0;
//  begin
    While X <= Length(Texto) - 2 do
    begin
      RGB.rgbtBlue := Ord(Texto[X]);
      X := X + 1;
      RGB.rgbtgreen := Ord(Texto[X]);
      X := X + 1;
      RGB.rgbtred := Ord(Texto[X]);
      Bitmap.Canvas.Pixels[l, a] := rgbtripletocolor(RGB);
      l := l + 1;
      imgPreview.Picture.Bitmap := Bitmap;

    end;
//  end;
  btnINI.Visible := True;
end;

procedure TBancoBitmap.btnINIClick(Sender: TObject);
var
  X: Integer;
  Y: Integer;
  Bitmap: TBitmap;
  ini: TIniFile;
  Pixels: PRGBTripleArray;
begin
  Bitmap := TBitmap.Create;
  try
    Bitmap.Assign(imgPreview.Picture.Graphic);
    ini := TIniFile.Create('.\Analise.ini');
    for Y := 0 to Bitmap.Height - 1 do
    begin
      Pixels := Bitmap.ScanLine[Y];
      for X := 0 to Bitmap.Width - 1 do
      begin

        ini.WriteInteger(IntToStr(X) + ',' + IntToStr(Y), 'Blue',
          Pixels[X].rgbtBlue);
        ini.WriteInteger(IntToStr(X) + ',' + IntToStr(Y), 'Green',
          Pixels[X].rgbtgreen);
        ini.WriteInteger(IntToStr(X) + ',' + IntToStr(Y), 'Red',
          Pixels[X].rgbtred);
        // end;
      end;
    end;
     imgPreview.Picture.Bitmap:= Bitmap;
  finally
    Bitmap.Free;
  end;
end;

procedure TBancoBitmap.btnINIIMGClick(Sender: TObject);
begin
  TXTBMP;
end;

procedure TBancoBitmap.btnSalvarClick(Sender: TObject);
begin
  imgPreview.Picture.SaveToFile('Arq.bmp');
end;

procedure TBancoBitmap.FormCreate(Sender: TObject);
begin
  Bitmap := TBitmap.Create;
  Bitmap.Width := 20;
  Bitmap.Height := 20;
end;

procedure TBancoBitmap.TXTBMP;
var
  C: RGBTRIPLE;
  X: Integer;
  Y: Integer;
  Bitmap: TBitmap;
  ini: TIniFile;
  Pixels: PRGBTripleArray;
  temp: string;
begin
  Bitmap := TBitmap.Create;
  try
    ini := TIniFile.Create('.\Analise.ini');
    Bitmap.Height := 20;
    Bitmap.Width := 20;
    // imgPreview.Width := Bitmap.Width;
    // imgPreview.Height := Bitmap.Width;
    try
      for Y := 0 to Bitmap.Height - 1 do
      begin
        Pixels := Bitmap.ScanLine[Y];
        for X := 0 to Bitmap.Width - 1 do
        begin
          Application.ProcessMessages;

          C.rgbtBlue := ini.ReadInteger(IntToStr(X) + ',' + IntToStr(Y),
            'Blue', 255);
          C.rgbtgreen := ini.ReadInteger(IntToStr(X) + ',' + IntToStr(Y),
            'Green', 255);
          C.rgbtred := ini.ReadInteger(IntToStr(X) + ',' + IntToStr(Y),
            'Red', 255);
          Bitmap.Canvas.Pixels[X, Y] := rgbtripletocolor(C);
        end;
      end;
    finally
      imgPreview.Picture.Bitmap := Bitmap;
    end;
  finally
    Bitmap.Free;
  end;
end;

end.
