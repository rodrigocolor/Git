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
    TabOrder = 7
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
    Caption = 'OK'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object DataSource1: TDataSource
    DataSet = Dmconexcao.ClientDataSet1
    Left = 200
    Top = 200
  end
end
