object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 299
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mmoResultado: TMemo
    Left = 24
    Top = 104
    Width = 377
    Height = 187
    TabOrder = 3
  end
  object btnCalc: TBitBtn
    Left = 176
    Top = 73
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcClick
  end
  object edtv1: TEdit
    Left = 152
    Top = 19
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object edtV2: TEdit
    Left = 152
    Top = 46
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 1
  end
end
