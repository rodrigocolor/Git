program cpuinfo;

uses
  Forms,
  mainfrm in 'mainfrm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
