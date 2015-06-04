unit unFormRelatorioB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormRelB = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  { Public declarations }
    const
    CLB = #13;
  end;

var
  FormRelB: TFormRelB;

implementation

{$R *.dfm}

uses unDmConexcao;

procedure TFormRelB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dmconexcao.ClientDataSet2.Close;
end;

procedure TFormRelB.FormCreate(Sender: TObject);
begin
  Dmconexcao.ClientDataSet2.Close;
  Dmconexcao.SQLDataSet2.Params[0].AsDate := Date;
  Dmconexcao.ClientDataSet2.open;
end;

end.
