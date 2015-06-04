unit mainfrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    MM: TMemo;
    EdCpuId: TEdit;
    LblIdOK: TLabel;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure EdCpuIdChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  SDL_math1, SDL_stringl, SDL_cpuid;

procedure TForm1.FormShow(Sender: TObject);

var
  CPUfs : longint;
  i     : integer;

begin
MM.Lines.Clear;
MM.Lines.Add('Number of installed CPUs: '+IntToStr(CPU_Count));
MM.Lines.Add('      Name of CPU vendor: '+CPU_VendorString);
MM.Lines.Add('      Market Name of CPU: '+CPU_MarketName);
MM.Lines.Add('            Brand of CPU: '+IntToStr(CPU_BrandID));
MM.Lines.Add('        Signature of CPU: '+Bin(CPU_Signature,32));
CPUfs := CPU_FeatureSet;
MM.Lines.Add('      Feature set of CPU: '+Bin(CPUfs,32));
MM.Lines.Add('    Serial number of CPU: '+CPU_SerialNumber);
MM.Lines.Add('      Measured CPU Speed: '+IntToStr(round(CPU_Speed(1000)))+' MHz');
MM.Lines.Add(' ');
MM.Lines.Add('       Calculated CPU Id: '+GenerateCPUID);
MM.Lines.Add(' ');

MM.Lines.Add('The following information has been extracted from the CPU signature:');
MM.Lines.Add('               CPU Model: '+IntTostr(CPU_Model));
MM.Lines.Add('      CPU Model/Extended: '+IntTostr(CPU_ExModel));
MM.Lines.Add('     CPU Stepping Number: '+IntTostr(CPU_Stepping));
MM.Lines.Add('             Type of CPU: '+IntToStr(CPU_Type));
MM.Lines.Add('               Overdrive: '+BoolTostr(CPU_OverDrive,0));
MM.Lines.Add('              CPU Family: '+IntToStr(CPU_Family));
MM.Lines.Add('     CPU Family/Extended: '+IntToStr(CPU_exFamily));
MM.Lines.Add(' ');
MM.Lines.Add('List of CPU features (extracted from the CPU feature set):');
for i:= 0 to 31 do
  begin
  if (CPUfs and $0000001) <> 0 then
    MM.Lines.Add('Bit '+IntToStr(i)+': '+CPUFeatureNames[TCPUFeatures(i)]);
  CPUfs := CPUfs shr 1;
  end;
EdCpuId.Text := GenerateCPUID;
end;

procedure TForm1.EdCpuIdChange(Sender: TObject);
begin
if CheckGeneratedCPUid(EdCpuId.Text)
  then begin
       LblIdOK.Font.Color := clGreen;
       LblIdOK.caption := 'CPU ID is OK'
       end
  else begin
       LblIdOK.Font.Color := clRed;
       LblIdOK.Caption := 'invalid CPU ID';
       end;
end;

end.
