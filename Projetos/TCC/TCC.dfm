object BancoBitmap: TBancoBitmap
  Left = 0
  Top = 0
  Caption = 'Banco Bitmap'
  ClientHeight = 235
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    635
    235)
  PixelsPerInch = 96
  TextHeight = 13
  object imgPreview: TImage
    Left = 392
    Top = 8
    Width = 235
    Height = 221
    Anchors = [akLeft, akTop, akRight, akBottom]
    Proportional = True
    Stretch = True
  end
  object Label1: TLabel
    Left = 146
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object btnConv: TBitBtn
    Left = 264
    Top = 19
    Width = 75
    Height = 25
    Caption = '------>'
    TabOrder = 1
    OnClick = btnConvClick
  end
  object btnSalvar: TBitBtn
    Left = 264
    Top = 81
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = btnSalvarClick
  end
  object mmoTexto: TMemo
    Left = 8
    Top = 8
    Width = 132
    Height = 221
    TabOrder = 0
  end
  object btnINI: TBitBtn
    Left = 264
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Img to ini'
    TabOrder = 3
    Visible = False
    OnClick = btnINIClick
  end
  object btnINIIMG: TBitBtn
    Left = 264
    Top = 143
    Width = 75
    Height = 25
    Caption = 'Ini to IMG'
    TabOrder = 4
    OnClick = btnINIIMGClick
  end
  object BitBtn1: TBitBtn
    Left = 264
    Top = 50
    Width = 75
    Height = 25
    Caption = '<---------'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
end
