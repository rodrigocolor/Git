object FormRelB: TFormRelB
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio b'#225'sico'
  ClientHeight = 445
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 5
    Width = 757
    Height = 401
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DTA_VENCIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_SEGURADO'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTA_CONTRATO'
        Width = 85
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 320
    Top = 412
    Width = 75
    Height = 25
    Caption = '&Fechar'
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = Dmconexcao.ClientDataSet2
    Left = 656
    Top = 56
  end
end
