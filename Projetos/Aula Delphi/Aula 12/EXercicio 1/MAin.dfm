object Form1: TForm1
  Left = 0
  Top = 0
  Caption = '9'
  ClientHeight = 655
  ClientWidth = 971
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grpCodData: TGroupBox
    Left = 0
    Top = 0
    Width = 971
    Height = 97
    Align = alTop
    Caption = 'Codifica'#231#227'o Data'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 40
      Width = 22
      Height = 13
      Caption = 'Dia: '
    end
    object lblMes: TLabel
      Left = 120
      Top = 40
      Width = 26
      Height = 13
      Caption = 'Mes: '
    end
    object lblAno: TLabel
      Left = 216
      Top = 40
      Width = 26
      Height = 13
      Caption = 'Ano: '
    end
    object edtDia: TEdit
      Left = 52
      Top = 37
      Width = 49
      Height = 21
      TabOrder = 0
    end
    object edtMes: TEdit
      Left = 148
      Top = 37
      Width = 49
      Height = 21
      TabOrder = 1
    end
    object edtAno: TEdit
      Left = 244
      Top = 37
      Width = 49
      Height = 21
      TabOrder = 2
    end
    object btnCodificarData: TBitBtn
      Left = 312
      Top = 35
      Width = 75
      Height = 25
      Caption = 'Data ->'
      TabOrder = 3
      OnClick = btnCodificarDataClick
    end
    object edtEdit: TEdit
      Left = 408
      Top = 37
      Width = 121
      Height = 21
      TabOrder = 4
    end
  end
  object grpDecoData: TGroupBox
    Left = 0
    Top = 97
    Width = 971
    Height = 105
    Align = alTop
    Caption = 'Decodificar data'
    TabOrder = 1
    object lblData: TLabel
      Left = 24
      Top = 44
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object lblDia: TLabel
      Left = 288
      Top = 44
      Width = 22
      Height = 13
      Caption = 'Dia: '
    end
    object lblMes1: TLabel
      Left = 384
      Top = 44
      Width = 26
      Height = 13
      Caption = 'Mes: '
    end
    object lblAno1: TLabel
      Left = 480
      Top = 44
      Width = 26
      Height = 13
      Caption = 'Ano: '
    end
    object dtpDAta1: TDateTimePicker
      Left = 53
      Top = 40
      Width = 93
      Height = 21
      Date = 42135.806484768520000000
      Time = 42135.806484768520000000
      TabOrder = 0
    end
    object btnDecoDAta: TBitBtn
      Left = 152
      Top = 39
      Width = 97
      Height = 25
      Caption = 'Decodificar data'
      TabOrder = 1
      OnClick = btnDecoDAtaClick
    end
    object edtDia1: TEdit
      Left = 316
      Top = 41
      Width = 49
      Height = 21
      TabOrder = 2
    end
    object edtMes1: TEdit
      Left = 412
      Top = 41
      Width = 49
      Height = 21
      TabOrder = 3
    end
    object edtAno1: TEdit
      Left = 508
      Top = 41
      Width = 49
      Height = 21
      TabOrder = 4
    end
  end
  object grpDiaAteHj: TGroupBox
    Left = 0
    Top = 202
    Width = 971
    Height = 127
    Align = alTop
    Caption = 'Dias Ate hoje'
    TabOrder = 2
    object lblDiasAteHj: TLabel
      Left = 32
      Top = 52
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object dtpDiasAteHj: TDateTimePicker
      Left = 60
      Top = 48
      Width = 93
      Height = 21
      Date = 42135.806484768520000000
      Time = 42135.806484768520000000
      TabOrder = 0
    end
    object btnDiasAteHj: TBitBtn
      Left = 159
      Top = 47
      Width = 97
      Height = 25
      Caption = 'Dias at'#233' hoje'
      TabOrder = 1
      OnClick = btnDiasAteHjClick
    end
    object edtDiasAtHoje: TEdit
      Left = 280
      Top = 50
      Width = 71
      Height = 21
      TabOrder = 2
    end
  end
  object grpFormatacaoDedata: TGroupBox
    Left = 0
    Top = 329
    Width = 971
    Height = 232
    Align = alTop
    Caption = 'Formata'#231#227'o de data'
    TabOrder = 3
    object lbl1: TLabel
      Left = 19
      Top = 44
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object lblHora: TLabel
      Left = 19
      Top = 84
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object dtpDAtaFd: TDateTimePicker
      Left = 48
      Top = 40
      Width = 98
      Height = 21
      Date = 42135.810212847220000000
      Time = 42135.810212847220000000
      TabOrder = 0
    end
    object dtpHora: TDateTimePicker
      Left = 48
      Top = 80
      Width = 98
      Height = 21
      Date = 42135.810212847220000000
      Time = 42135.810212847220000000
      Kind = dtkTime
      TabOrder = 1
    end
    object RadioGroup1: TRadioGroup
      Left = 216
      Top = 16
      Width = 393
      Height = 105
      Caption = 'Formato'
      Columns = 2
      Items.Strings = (
        'Data'
        'Hora  '
        'Dia(n)'
        'Ano(n)'
        'Nome m'#234's'
        'Data longa'
        'Data e hora'
        'M'#234's (n)'
        'Dia semana'
        'Ano-M'#234's-Dia')
      TabOrder = 2
    end
    object btnFormatar: TBitBtn
      Left = 712
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Formatar'
      TabOrder = 3
      OnClick = btnFormatarClick
    end
    object Edit1: TEdit
      Left = 712
      Top = 104
      Width = 225
      Height = 21
      TabOrder = 4
    end
  end
  object grpCronometro: TGroupBox
    Left = 0
    Top = 560
    Width = 971
    Height = 95
    Align = alBottom
    Caption = 'grpCronometro'
    TabOrder = 4
    object lbl2: TLabel
      Left = 217
      Top = 55
      Width = 25
      Height = 13
      Caption = 'Inicio'
    end
    object lblp: TLabel
      Left = 330
      Top = 55
      Width = 22
      Height = 13
      Caption = 'Para'
    end
    object lblTm: TLabel
      Left = 526
      Top = 50
      Width = 95
      Height = 13
      Caption = 'Tempo Transcorrido'
    end
    object edtInicio: TEdit
      Left = 248
      Top = 47
      Width = 76
      Height = 21
      TabOrder = 0
    end
    object edtPara: TEdit
      Left = 358
      Top = 47
      Width = 75
      Height = 21
      TabOrder = 1
    end
    object edtTmp: TEdit
      Left = 627
      Top = 47
      Width = 142
      Height = 21
      TabOrder = 2
    end
  end
  object btnIinicia: TBitBtn
    Left = 32
    Top = 605
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 5
    OnClick = btnIiniciaClick
  end
  object btnPara: TBitBtn
    Left = 128
    Top = 608
    Width = 75
    Height = 25
    Caption = 'parar'
    TabOrder = 6
    OnClick = btnParaClick
  end
end
