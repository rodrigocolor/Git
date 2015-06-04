program TCCprj;

uses
  Vcl.Forms,
  TCC in 'TCC.pas' {BancoBitmap},
  ImageProcessingPrimitives in 'ImageProcessingPrimitives.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TBancoBitmap, BancoBitmap);
  Application.Run;
end.
