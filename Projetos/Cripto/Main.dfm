object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 300
  ClientWidth = 891
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    891
    300)
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 633
    Top = 8
    Width = 242
    Height = 284
    Anchors = [akLeft, akTop, akRight, akBottom]
    Stretch = True
    ExplicitWidth = 256
    ExplicitHeight = 283
  end
  object mmoCrip: TMemo
    Left = 8
    Top = 8
    Width = 201
    Height = 283
    TabOrder = 0
  end
  object mmoDEsc: TMemo
    Left = 426
    Top = 8
    Width = 201
    Height = 283
    TabOrder = 1
  end
  object btnCrip: TBitBtn
    Left = 288
    Top = 88
    Width = 75
    Height = 25
    Caption = '---->'
    TabOrder = 2
    OnClick = btnCripClick
  end
  object btnDEsc: TBitBtn
    Left = 288
    Top = 136
    Width = 75
    Height = 25
    Caption = '<----'
    TabOrder = 3
    OnClick = btnDEscClick
  end
  object edtKey: TEdit
    Left = 272
    Top = 192
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 4
  end
end
