object FormCadastro: TFormCadastro
  Left = 780
  Top = 312
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Ap'#243'lices'
  ClientHeight = 322
  ClientWidth = 264
  Color = clBtnFace
  Constraints.MaxHeight = 360
  Constraints.MaxWidth = 280
  Constraints.MinHeight = 360
  Constraints.MinWidth = 280
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 8
    Top = 100
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label4: TLabel
    Left = 8
    Top = 192
    Width = 69
    Height = 13
    Caption = 'Data Contrato'
  end
  object Label5: TLabel
    Left = 8
    Top = 232
    Width = 81
    Height = 13
    Caption = 'Data vencimento'
  end
  object Label3: TLabel
    Left = 8
    Top = 54
    Width = 34
    Height = 13
    Caption = 'Ap'#243'lice'
  end
  object Label6: TLabel
    Left = 8
    Top = 146
    Width = 71
    Height = 13
    Caption = 'Tipo de ap'#243'lice'
  end
  object dtpContrato: TDateTimePicker
    Left = 8
    Top = 209
    Width = 94
    Height = 21
    Date = 41995.651742500000000000
    Time = 41995.651742500000000000
    TabOrder = 4
  end
  object dtpVencimento: TDateTimePicker
    Left = 8
    Top = 251
    Width = 94
    Height = 21
    Date = 41995.651742500000000000
    Time = 41995.651742500000000000
    TabOrder = 5
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 285
    Width = 81
    Height = 25
    Caption = 'Cancelar'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 6
  end
  object EditNome: TEdit
    Left = 8
    Top = 27
    Width = 250
    Height = 21
    TabOrder = 0
    TextHint = 'Nome'
  end
  object EditApolice: TEdit
    Left = 8
    Top = 73
    Width = 250
    Height = 21
    TabOrder = 1
    TextHint = 'Ap'#243'lice'
  end
  object EditTelefone: TEdit
    Left = 8
    Top = 119
    Width = 250
    Height = 21
    MaxLength = 11
    NumbersOnly = True
    TabOrder = 2
    TextHint = 'Telefone'
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 165
    Width = 225
    Height = 21
    TabOrder = 3
    Text = 'Tipo de ap'#243'lice'
    OnChange = ComboBox1Change
    Items.Strings = (
      'VIDA PARTICULAR '
      'VIDA EMPRESARIAL'
      'AUTO '
      'FROTA'
      'RESIDENCIAL'
      'EMPRESARIAL'
      'RURAL')
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 285
    Width = 81
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 7
    OnClick = BitBtn1Click
  end
  object DataSource1: TDataSource
    DataSet = Dmconexcao.ClientDataSet1
    Left = 216
    Top = 16
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = Dmconexcao.SQLDataSet1
    ScopeMappings = <>
    Left = 128
    Top = 168
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
  end
end
