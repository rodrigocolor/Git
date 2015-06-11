object frmMenu: TfrmMenu
  Left = 0
  Top = 0
  Caption = 'frmMenu'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 176
    Top = 104
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 0
  end
  object mmMenu: TMainMenu
    Left = 336
    Top = 184
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        object Cadastro1: TMenuItem
          Caption = 'Cadastro'
        end
        object Consulta1: TMenuItem
          Caption = 'Consulta'
        end
        object Relatrios1: TMenuItem
          Caption = 'Relat'#243'rios'
        end
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
    end
    object Contrato1: TMenuItem
      Caption = 'Contrato'
      object Gerar1: TMenuItem
        Caption = 'Gerar'
        OnClick = Gerar1Click
      end
    end
    object Configuraes1: TMenuItem
      Caption = 'Configura'#231#245'es'
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
