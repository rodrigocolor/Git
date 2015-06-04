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
  object Edit1: TEdit
    Left = 24
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Buscar: TBitBtn
    Left = 48
    Top = 67
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = BuscarClick
  end
  object Memo1: TMemo
    Left = 208
    Top = 8
    Width = 419
    Height = 283
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object JvProgressBar1: TJvProgressBar
    Left = 8
    Top = 112
    Width = 150
    Height = 17
    Enabled = False
    Style = pbstMarquee
    TabOrder = 3
    DisplayOnTaskbar = True
  end
  object Button1: TButton
    Left = 48
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 464
    Top = 88
  end
end
