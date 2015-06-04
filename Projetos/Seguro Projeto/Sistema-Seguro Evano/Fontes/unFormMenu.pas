unit unFormMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ToolWin, Vcl.ComCtrls,
  System.Actions, Vcl.ActnList, Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.ImgList,
  Vcl.StdActns, Vcl.AppEvnts, unAtivacao, System.IniFiles, unFormCadastro,
  Vcl.StdCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, unFormRelatorioB;

type
  TunFormMenuP = class(TForm)
    ActionList1: TActionList;
    ToolBar1: TToolBar;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Sair1: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    ImageBG: TImage;
    FileExit: TFileExit;
    ActCadastro: TAction;
    ImageList1: TImageList;
    BalloonHint1: TBalloonHint;
    ApplicationEvents1: TApplicationEvents;
    ActGrid: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ApplicationEvents1Hint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ActCadastroExecute(Sender: TObject);
    procedure CarregaForm(ClasseDoForm: TFormClass);
    procedure ActGridExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  unFormMenuP: TunFormMenuP;

implementation

{$R *.dfm}

procedure TunFormMenuP.ActCadastroExecute(Sender: TObject);
begin
  CarregaForm(TFormCadastro);
end;

procedure TunFormMenuP.ActGridExecute(Sender: TObject);
begin
  CarregaForm(TFormRelB);
end;

procedure TunFormMenuP.ApplicationEvents1Hint(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := Application.Hint;
end;

procedure TunFormMenuP.CarregaForm(ClasseDoForm: TFormClass);
var
  form: TForm;
begin
  try
    form := ClasseDoForm.Create(Application.MainForm);
    form.ShowModal;
  finally
    form.Free;
  end;
end;

procedure TunFormMenuP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Deseja realmente sair?', 'Aviso..',
    MB_YESNO + MB_DEFBUTTON2) = idyes then
    Application.Terminate
  else
    Abort;
end;

procedure TunFormMenuP.FormCreate(Sender: TObject);
var
  cr: TCrypto;
begin
  cr := TCrypto.Create;
  try
    if cr.VerificaAtivacao = false then
      Application.Terminate;
  finally
    cr.Free;
  end;
end;

procedure TunFormMenuP.FormShow(Sender: TObject);
begin
  if DirectoryExists('..\imagens\bgs\') then
    ImageBG.Picture.LoadFromFile('..\imagens\bgs\bg' + inttostr(random(4))
      + '.jpg');
end;

procedure TunFormMenuP.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[1].Text := TimeToStr(Time);
end;

end.
