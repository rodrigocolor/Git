object frmContrato: TfrmContrato
  Left = 0
  Top = 0
  Caption = 'CONTRATOS'
  ClientHeight = 230
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 58
    Top = 8
    Width = 49
    Height = 16
    Caption = 'Contrato'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 7
    Top = 8
    Width = 45
    Height = 16
    Caption = 'N'#250'mero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 70
    Top = 37
    Width = 30
    Height = 16
    Caption = 'In'#237'cio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 11
    Top = 68
    Width = 95
    Height = 16
    Caption = 'Forma Cobran'#231'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 31
    Top = 121
    Width = 76
    Height = 16
    Caption = 'Valor Parcela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 280
    Top = 37
    Width = 48
    Height = 16
    Caption = 'T'#233'rmino'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 93
    Width = 48
    Height = 16
    Caption = 'Servi'#231'os'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 70
    Top = 149
    Width = 33
    Height = 16
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 84
    Top = 178
    Width = 22
    Height = 16
    Caption = 'CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnTela: TButton
    Left = 280
    Top = 146
    Width = 152
    Height = 56
    Caption = 'Gerar Carn'#234
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnTelaClick
  end
  object dtpInicio: TDateTimePicker
    Left = 113
    Top = 35
    Width = 145
    Height = 24
    Date = 42149.852882592590000000
    Time = 42149.852882592590000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object cmbCobranca: TComboBox
    Left = 112
    Top = 65
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Items.Strings = (
      'Mensal'
      'Bimestral'
      'Trimestral'
      'Semestral'
      'Anual'
      'Quadrimestral')
  end
  object dtpTermino: TDateTimePicker
    Left = 346
    Top = 35
    Width = 127
    Height = 24
    Date = 42149.862269861110000000
    Time = 42149.862269861110000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edtContrato: TEdit
    Left = 113
    Top = 5
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object edtValorParcela: TEdit
    Left = 113
    Top = 118
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object ckbTelefone: TCheckBox
    Left = 152
    Top = 95
    Width = 97
    Height = 17
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object ckbInternet: TCheckBox
    Left = 280
    Top = 95
    Width = 97
    Height = 17
    Caption = 'Internet'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object ckbTV: TCheckBox
    Left = 400
    Top = 95
    Width = 97
    Height = 17
    Caption = 'TV'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object ckbAcademia: TCheckBox
    Left = 496
    Top = 97
    Width = 97
    Height = 17
    Caption = 'Academia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object edtNome: TEdit
    Left = 113
    Top = 148
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object edtCPF: TEdit
    Left = 112
    Top = 178
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
end
