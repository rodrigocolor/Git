program PrjSistema;

uses
  Vcl.Forms,
  FrmMenuPrincipal in 'FrmMenuPrincipal.pas' {frmMenu},
  FRMCarne in 'FRMCarne.pas' {Formcarne},
  FRMPrincipal in 'FRMPrincipal.pas' {frmContrato},
  frmCadClientes in 'frmCadClientes.pas' {frmCadCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TFormcarne, Formcarne);
  Application.CreateForm(TfrmContrato, frmContrato);
  Application.CreateForm(TfrmCadCliente, frmCadCliente);
  Application.Run;
end.
