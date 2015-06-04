object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 625
    Height = 113
    Caption = 'Valida CEP'
    TabOrder = 0
    object Label1: TLabel
      Left = 66
      Top = 55
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object BitBtn1: TBitBtn
      Left = 151
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Validar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object LabeledEdit1: TLabeledEdit
      Left = 24
      Top = 28
      Width = 121
      Height = 21
      EditLabel.Width = 26
      EditLabel.Height = 13
      EditLabel.Caption = 'CEP: '
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 127
    Width = 625
    Height = 138
    Caption = 'Extrair Nome da pessoa'
    TabOrder = 1
    object edtNome: TEdit
      Left = 49
      Top = 40
      Width = 179
      Height = 21
      TabOrder = 0
    end
    object edtPrimeironome: TEdit
      Left = 49
      Top = 67
      Width = 179
      Height = 21
      TabOrder = 1
    end
    object btnExtrairnome: TBitBtn
      Left = 263
      Top = 38
      Width = 115
      Height = 25
      Caption = 'Extrair 1 nome'
      TabOrder = 2
      OnClick = btnExtrairnomeClick
    end
    object BitBtn2: TBitBtn
      Left = 384
      Top = 38
      Width = 129
      Height = 25
      Caption = 'Extrair Sobre nome'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object btnInc: TBitBtn
      Left = 263
      Top = 69
      Width = 115
      Height = 25
      Caption = 'Incluir'
      TabOrder = 4
      OnClick = btnIncClick
    end
  end
end
