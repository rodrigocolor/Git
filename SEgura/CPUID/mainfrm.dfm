object Form1: TForm1
  Left = 462
  Top = 277
  Width = 835
  Height = 401
  Caption = 
    'CPUid is part of the SDL Component Suite: see www.lohninger.com ' +
    'for more information'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object LblIdOK: TLabel
    Left = 523
    Top = 331
    Width = 5
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 331
    Width = 164
    Height = 16
    Caption = 'Check a generated CPU ID:'
  end
  object MM: TMemo
    Left = 0
    Top = 0
    Width = 827
    Height = 305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object EdCpuId: TEdit
    Left = 176
    Top = 328
    Width = 337
    Height = 24
    TabOrder = 1
    OnChange = EdCpuIdChange
  end
end
