object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 222
  ClientWidth = 208
  Color = clBtnFace
  Constraints.MaxHeight = 261
  Constraints.MaxWidth = 224
  Constraints.MinHeight = 261
  Constraints.MinWidth = 224
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblNome: TLabel
    Left = 24
    Top = 16
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object edtSexo: TEdit
    Left = 54
    Top = 13
    Width = 139
    Height = 21
    TabOrder = 0
  end
  object rgSexo: TRadioGroup
    Left = 8
    Top = 64
    Width = 185
    Height = 105
    Caption = 'Sexo'
    Items.Strings = (
      '1- Masculino'
      '2- Feminino')
    TabOrder = 1
  end
  object btnCm: TButton
    Left = 54
    Top = 189
    Width = 75
    Height = 25
    Caption = 'Cumprimentar'
    TabOrder = 2
    OnClick = btnCmClick
  end
end
