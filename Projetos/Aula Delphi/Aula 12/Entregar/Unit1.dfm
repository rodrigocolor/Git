object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'DATE'
  ClientHeight = 70
  ClientWidth = 244
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dtpDATA: TDateTimePicker
    Left = 8
    Top = 8
    Width = 97
    Height = 21
    Date = 42134.827167094910000000
    Time = 42134.827167094910000000
    TabOrder = 0
  end
  object btnGo: TBitBtn
    Left = 111
    Top = 4
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 1
    OnClick = btnGoClick
  end
  object edtDataExt: TEdit
    Left = 8
    Top = 35
    Width = 201
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
end
