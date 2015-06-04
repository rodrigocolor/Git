object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 417
  ClientWidth = 717
  Color = clBtnFace
  Constraints.MinHeight = 456
  Constraints.MinWidth = 733
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    717
    417)
  PixelsPerInch = 96
  TextHeight = 13
  object lblN: TLabel
    Left = 39
    Top = 21
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label1: TLabel
    Left = 12
    Top = 48
    Width = 54
    Height = 13
    Caption = 'Sobrenome'
  end
  object Label2: TLabel
    Left = 22
    Top = 256
    Width = 44
    Height = 13
    Caption = 'Profiss'#227'o'
  end
  object lbl1: TLabel
    Left = 360
    Top = 24
    Width = 38
    Height = 13
    Caption = 'Resumo'
  end
  object Label3: TLabel
    Left = 419
    Top = 377
    Width = 125
    Height = 13
    Anchors = []
    Caption = 'Quantidade de caracteres'
    ExplicitLeft = 392
    ExplicitTop = 318
  end
  object Label4: TLabel
    Left = 605
    Top = 377
    Width = 101
    Height = 13
    Anchors = []
    Caption = 'Quantidade de linhas'
    ExplicitLeft = 568
    ExplicitTop = 318
  end
  object lblCaracteres: TLabel
    Left = 467
    Top = 393
    Width = 3
    Height = 13
    Anchors = []
  end
  object lblLinhas: TLabel
    Left = 631
    Top = 393
    Width = 3
    Height = 13
    Anchors = []
  end
  object lblEmail: TLabel
    Left = 42
    Top = 75
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object edtNome: TEdit
    Left = 72
    Top = 18
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtSobrenome: TEdit
    Left = 72
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object rgSexo: TRadioGroup
    Left = 72
    Top = 128
    Width = 185
    Height = 105
    Caption = 'Sexo:'
    Items.Strings = (
      'Masculino'
      'Feminino')
    TabOrder = 3
  end
  object cbbProfissao: TComboBox
    Left = 72
    Top = 253
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemIndex = 1
    TabOrder = 4
    Text = 'Professor '
    Items.Strings = (
      'Estudante'
      'Professor '
      'Programador'
      'Motorista'
      'Agricultor'
      'Vendedor'
      'Secretaria'
      'Mec'#226'nico')
  end
  object CheckBox1: TCheckBox
    Left = 72
    Top = 296
    Width = 97
    Height = 17
    Caption = 'Tem carro'
    TabOrder = 5
  end
  object mmoResumo: TMemo
    Left = 360
    Top = 43
    Width = 349
    Height = 333
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 7
    OnChange = mmoResumoChange
  end
  object btnResumo: TBitBtn
    Left = 94
    Top = 365
    Width = 75
    Height = 25
    Caption = 'Exibir resumo'
    TabOrder = 6
    OnClick = btnResumoClick
  end
  object edtEmail: TEdit
    Left = 72
    Top = 72
    Width = 265
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 634
    Top = 12
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Salvar'
    TabOrder = 8
    OnClick = Button1Click
  end
  object madExcept1: TMadExceptionHandler
    Left = 280
    Top = 168
  end
end
