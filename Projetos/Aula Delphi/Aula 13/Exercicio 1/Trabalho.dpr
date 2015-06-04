program Trabalho;

uses
  Vcl.Forms,
  UnPrincipal in 'UnPrincipal.pas' {FormPrincipal};

    {01010010 01101111 01100100 01110010]
    [01101001 01100111 01101111 00100000]
    [01000010 01100101 01110010 01101110]
    [01100001 01110010 01100100 01101001}
{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
