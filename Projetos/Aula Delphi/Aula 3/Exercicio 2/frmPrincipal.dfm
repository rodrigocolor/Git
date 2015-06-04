object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 331
  ClientWidth = 507
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 232
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyDown = Edit1KeyUp
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 248
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = Button1Click
  end
end
