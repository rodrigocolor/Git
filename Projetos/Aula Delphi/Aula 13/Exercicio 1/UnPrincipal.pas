{ -----------------------------------------------------------------------------
  Unit Name: UnPrincipal
  Author:    Rodrigo
  Date:      24-mai-2015
  Purpose:
  History:
  ----------------------------------------------------------------------------- }

unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.ExtCtrls;

type
  TFormPrincipal = class(TForm)
    lbledt1: TLabeledEdit;
    mmoTotal: TMemo;
    grpInfo: TGroupBox;
    lblTipoQuant: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    lblSub: TLabel;
    Label5: TLabel;
    lst1: TListBox;
    edtVlr: TEdit;
    btnAdd: TBitBtn;
    edtSub: TEdit;
    edtQtd: TEdit;
    btnSalvar: TBitBtn;
    dlgSaveTot: TSaveDialog;
    procedure edtVlrKeyPress(Sender: TObject; var Key: Char);
    procedure lst1Click(Sender: TObject);
    procedure edtVlrKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAddClick(Sender: TObject);
    function validou: Boolean;
    procedure limparCampos;
    procedure edtQtdKeyPress(Sender: TObject; var Key: Char);
    procedure lbledt1KeyPress(Sender: TObject; var Key: Char);
    procedure lst1KeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    { 01010010 01101111 01100100 01110010]
      [01101001 01100111 01101111 00100000]
      [01000010 01100101 01110010 01101110]
      [01100001 01110010 01100100 01101001 }
  private
  var
    GValorTOT: Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}
{ -----------------------------------------------------------------------------
  Procedure: btnAddClick
  Author:    Rodrigo
  Date:      24-mai-2015
  Arguments: Sender: TObject
  Result:    None
  ----------------------------------------------------------------------------- }

procedure TFormPrincipal.btnAddClick(Sender: TObject);
var
  I: Integer;
  s: string;
begin
  lst1.SetFocus;
  if validou then
  begin
    mmoTotal.Lines.Add(lst1.Items.Strings[lst1.ItemIndex] + ' -  R$ ' +
      edtVlr.Text + '  -        Qtd: ' + edtQtd.Text + lblTipoQuant.Caption +
      '      -       Sub total: R$' + edtSub.Text);
    GValorTOT := StrToFloat(edtQtd.Text) * StrToFloat(edtVlr.Text);

    for I := 0 to round(mmoTotal.Width / 4.2) do
      s := s + '-';
    mmoTotal.Lines.Add(s);
    limparCampos;
  end;

end;

{ -----------------------------------------------------------------------------
  Procedure: btnSalvarClick
  Author:    Rodrigo
  Date:      24-mai-2015
  Arguments: Sender: TObject
  Result:    None
  ----------------------------------------------------------------------------- }

procedure TFormPrincipal.btnSalvarClick(Sender: TObject);
begin

  mmoTotal.Lines.Add
    ('                                                     Total:' +
    FloatToStr(GValorTOT));
  limparCampos;
  dlgSaveTot.InitialDir := ExtractFileDir(Application.ExeName);
  dlgSaveTot.FileName := lbledt1.Text;
  if dlgSaveTot.Execute then
    if not(trim(mmoTotal.Text) = EmptyStr) then
      mmoTotal.Lines.SaveToFile(dlgSaveTot.FileName)
    else
      ShowMessage('Não existem produtos para serem salvos!!');

end;

{ -----------------------------------------------------------------------------
  Procedure: edtQtdKeyPress
  Author:    Rodrigo
  Date:      24-mai-2015
  Arguments: Sender: TObject; var Key: Char
  Result:    None
  ----------------------------------------------------------------------------- }

procedure TFormPrincipal.edtQtdKeyPress(Sender: TObject; var Key: Char);
begin
  if edtQtd.Text <> EmptyStr then
    edtSub.Text := FormatFloat('###0,00', StrToFloat(edtQtd.Text) *
      StrToFloat(edtVlr.Text));
  if Key = #13 then
    Self.SelectNext(Self.ActiveControl, true, true);
end;

{ -----------------------------------------------------------------------------
  Procedure: edtVlrKeyPress
  Author:    Rodrigo
  Date:      24-mai-2015
  Arguments: Sender: TObject; var Key: Char
  Result:    None
  ----------------------------------------------------------------------------- }

{ -----------------------------------------------------------------------------
  Procedure: edtVlrKeyPress
  Author:    Rodrigo
  Date:      24-mai-2015
  Arguments: Sender: TObject; var Key: Char
  Result:    None
  ----------------------------------------------------------------------------- }

procedure TFormPrincipal.edtVlrKeyPress(Sender: TObject; var Key: Char);
var
  str_valor: String;
  dbl_valor: Double;
begin

  { verificando se estamos recebendo o TEdit realmente }
  if Key = #13 then
    Self.SelectNext(Self.ActiveControl, true, true);
  if edtQtd.Text <> EmptyStr then
    IF Sender is TEdit THEN
    BEGIN
      { se tecla pressionada e' um numero, backspace ou del deixa passar }
      IF (Key in ['0' .. '9', #8, #9]) THEN
      BEGIN
        { guarda valor do TEdit com que vamos trabalhar }
        str_valor := TEdit(Sender).Text;
        { verificando se nao esta vazio }
        IF str_valor = EmptyStr THEN
          str_valor := '0,00';
        { se valor numerico ja insere na string temporaria }
        IF Key in ['0' .. '9'] THEN
          str_valor := Concat(str_valor, Key);
        { retira pontos e virgulas se tiver! }
        str_valor := trim(StringReplace(str_valor, '.', '',
          [rfReplaceAll, rfIgnoreCase]));
        str_valor := trim(StringReplace(str_valor, ',', '',
          [rfReplaceAll, rfIgnoreCase]));
        { inserindo 2 casas decimais }
        dbl_valor := StrToFloat(str_valor);
        dbl_valor := (dbl_valor / 100);

        { reseta posicao do tedit }
        TEdit(Sender).SelStart := Length(TEdit(Sender).Text);
        { retornando valor tratado ao TEdit }
        TEdit(Sender).Text := FormatFloat('#####0.00', dbl_valor);
      END;
      { se nao e' key relevante entao reseta }
      IF NOT(Key in [#8, #9]) THEN
        Key := #0;
    END;

end;

{ -----------------------------------------------------------------------------
  Procedure: edtVlrKeyUp
  Author:    Rodrigo
  Date:      24-mai-2015
  Arguments: Sender: TObject; var Key: Word; Shift: TShiftState
  Result:    None
  ----------------------------------------------------------------------------- }

procedure TFormPrincipal.edtVlrKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  rs: Real;
begin
  if edtQtd.Text <> EmptyStr then
  begin
    rs := (StrToFloat(edtQtd.Text) * StrToFloat(edtVlr.Text));
    edtSub.Text := FormatFloat('###0.00', rs);
  end;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  GValorTOT := 0;
end;

procedure TFormPrincipal.lbledt1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    lst1.SetFocus;
end;

procedure TFormPrincipal.limparCampos;
begin
  edtVlr.Text := '0';
  edtSub.Text := '0,00';
  edtQtd.Text := '0,00';
  lst1.ItemIndex := -1;

end;

procedure TFormPrincipal.lst1Click(Sender: TObject);

begin
  if lst1.ItemIndex + 1 in [1, 2, 3, 4, 5, 7, 9, 10, 13, 14, 15, 16, 17, 18,
    19, 20] then
  begin
    lblTipoQuant.Caption := 'Kg';
    edtQtd.Text := '0,00';
    edtQtd.OnKeyPress := edtVlrKeyPress;
  end
  else
  begin
    lblTipoQuant.Caption := 'Un';
    edtQtd.Text := '0';
    edtQtd.OnKeyPress := edtQtdKeyPress;
  end;

  edtVlr.Text := '0,00';
end;

procedure TFormPrincipal.lst1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edtQtd.SetFocus;
end;

{ -----------------------------------------------------------------------------
  Procedure: validou
  Author:    Rodrigo
  Date:      24-mai-2015
  Arguments: None
  Result:    Boolean
  ----------------------------------------------------------------------------- }

function TFormPrincipal.validou: Boolean;
begin
  Result := true;
  if trim(lbledt1.Text) = EmptyStr then
  begin
    Result := False;
    lbledt1.SetFocus;
    ShowMessage('Informe o nome do cliente!');
    Exit;
  end
  else if lst1.ItemIndex = -1 then
  begin
    Result := False;
    ShowMessage('Escolha um item!');
    Exit;
  end
  else if (trim(edtQtd.Text) = EmptyStr) or (trim(edtQtd.Text) = '0') then
  begin
    Result := False;
    edtQtd.SetFocus;
    ShowMessage('Informe a quantidade!');
    Exit;
  end
  else if trim(edtVlr.Text) = '0,00' then
  begin
    Result := False;
    edtVlr.SetFocus;
    ShowMessage('Informe o valor do produto!');
    Exit;
  end;

end;

end.
