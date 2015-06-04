unit unFormCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ComCtrls, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TFormCadastro = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    dtpContrato: TDateTimePicker;
    dtpVencimento: TDateTimePicker;
    BitBtn2: TBitBtn;
    EditNome: TEdit;
    EditApolice: TEdit;
    EditTelefone: TEdit;
    ComboBox1: TComboBox;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    procedure ResetCDS;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastro: TFormCadastro;

implementation

{$R *.dfm}

uses unDmConexcao;

procedure TFormCadastro.BitBtn1Click(Sender: TObject);
begin
  try
    with Dmconexcao do
    begin
      ClientDataSet1.open;
      ClientDataSet1NOME_SEGURADO.AsString := Trim(EditNome.Text);
      ClientDataSet1APOLICE.AsString := Trim(EditApolice.Text);
      ClientDataSet1TELEFONE.AsString := Trim(EditTelefone.Text);
      ClientDataSet1DTA_CONTRATO.AsDateTime := dtpContrato.Date;
      ClientDataSet1DTA_VENCIMENTO.AsDateTime := dtpVencimento.Date;
      ClientDataSet1.Post;
      ClientDataSet1.ApplyUpdates(0);
    end;
  finally
    ShowMessage('Cadastro efetuado com sucesso!');
    Close;
  end;
end;

procedure TFormCadastro.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:
      Dmconexcao.ClientDataSet1TIPO_APOLICE.AsString := 'VP';
    1:
      Dmconexcao.ClientDataSet1TIPO_APOLICE.AsString := 'VE';
    2:
      Dmconexcao.ClientDataSet1TIPO_APOLICE.AsString := 'AU';
    3:
      Dmconexcao.ClientDataSet1TIPO_APOLICE.AsString := 'FR';
    4:
      Dmconexcao.ClientDataSet1TIPO_APOLICE.AsString := 'RE';
    5:
      Dmconexcao.ClientDataSet1TIPO_APOLICE.AsString := 'EM';
    6:
      Dmconexcao.ClientDataSet1TIPO_APOLICE.AsString := 'RU';
  end;
end;

procedure TFormCadastro.FormCreate(Sender: TObject);
begin
  ResetCDS;
end;

procedure TFormCadastro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
    // se for, passa o foco para o próximo campo, zerando o valor da variável Key
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure TFormCadastro.ResetCDS;
begin
  Dmconexcao.ClientDataSet1.open;
  Dmconexcao.ClientDataSet1.Insert;
  dtpContrato.Datetime := Now;
  dtpVencimento.Datetime := Now + 30;
end;

end.
