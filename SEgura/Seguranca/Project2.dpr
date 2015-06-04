program Project2;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  uBiblioteca in 'uBiblioteca.pas',
  ReadRegistryInfo in 'ReadRegistryInfo.pas',
  FastCodeCPUID in 'FastCodeCPUID.pas',
  cpuid in 'cpuid.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
