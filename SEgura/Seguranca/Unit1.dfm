object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 359
  ClientWidth = 1068
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    1068
    359)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 148
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 8
    Top = 167
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 8
    Top = 186
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 8
    Top = 205
    Width = 31
    Height = 13
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 8
    Top = 224
    Width = 31
    Height = 13
    Caption = 'Label5'
  end
  object Label6: TLabel
    Left = 8
    Top = 243
    Width = 31
    Height = 13
    Caption = 'Label6'
  end
  object Label7: TLabel
    Left = 8
    Top = 262
    Width = 31
    Height = 13
    Caption = 'Label7'
  end
  object Label8: TLabel
    Left = 8
    Top = 281
    Width = 31
    Height = 13
    Caption = 'Label8'
  end
  object Label9: TLabel
    Left = 8
    Top = 300
    Width = 31
    Height = 13
    Caption = 'Label9'
  end
  object Label10: TLabel
    Left = 8
    Top = 319
    Width = 37
    Height = 13
    Caption = 'Label10'
  end
  object Label11: TLabel
    Left = 8
    Top = 338
    Width = 37
    Height = 13
    Caption = 'Label11'
  end
  object BitBtn1: TBitBtn
    Left = 332
    Top = 112
    Width = 137
    Height = 25
    Caption = 'Serial Placa mae'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object btnNomeUsusarui: TBitBtn
    Left = 324
    Top = 143
    Width = 145
    Height = 25
    Caption = 'Usuario Logado'
    TabOrder = 1
    OnClick = btnNomeUsusaruiClick
  end
  object BitBtn2: TBitBtn
    Left = 368
    Top = 192
    Width = 75
    Height = 25
    Caption = 'HD'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 368
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Resolucao'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object Button1: TButton
    Left = 32
    Top = 117
    Width = 75
    Height = 25
    Caption = 'GetInfo'
    TabOrder = 4
    OnClick = Get
  end
  object BitBtn4: TBitBtn
    Left = 368
    Top = 266
    Width = 75
    Height = 25
    Caption = 'WinKEy'
    TabOrder = 5
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 727
    Top = 36
    Width = 75
    Height = 25
    Caption = 'Info >'
    TabOrder = 6
    OnClick = BitBtn5Click
  end
  object Memo1: TMemo
    Left = 808
    Top = 8
    Width = 257
    Height = 343
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Memo1')
    TabOrder = 7
  end
  object BitBtn6: TBitBtn
    Left = 727
    Top = 162
    Width = 75
    Height = 25
    Caption = 'CPU id 1'
    TabOrder = 8
    OnClick = BitBtn6Click
  end
  object BitBtn7: TBitBtn
    Left = 32
    Top = 72
    Width = 75
    Height = 25
    Caption = 'BitBtn7'
    TabOrder = 9
    OnClick = BitBtn7Click
  end
  object btnCpu: TBitBtn
    Left = 727
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Cpu Info >'
    TabOrder = 10
    OnClick = btnCpuClick
  end
end
