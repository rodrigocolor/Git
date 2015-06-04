object frmCadastroUsuarios: TfrmCadastroUsuarios
  Left = 0
  Top = 0
  Caption = 'Cadastro de usuarios'
  ClientHeight = 180
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabeledEdit1: TLabeledEdit
    Left = 64
    Top = 32
    Width = 185
    Height = 21
    EditLabel.Width = 36
    EditLabel.Height = 13
    EditLabel.Caption = 'Usu'#225'rio'
    TabOrder = 0
  end
  object LabeledEdit2: TLabeledEdit
    Left = 64
    Top = 72
    Width = 185
    Height = 21
    EditLabel.Width = 30
    EditLabel.Height = 13
    EditLabel.Caption = 'Senha'
    PasswordChar = '*'
    TabOrder = 1
  end
  object LabeledEdit3: TLabeledEdit
    Left = 64
    Top = 112
    Width = 185
    Height = 21
    EditLabel.Width = 87
    EditLabel.Height = 13
    EditLabel.Caption = 'Senha novamente'
    PasswordChar = '*'
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 120
    Top = 147
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
  end
  object ds1: TDataSource
    DataSet = Dmconexcao.ClientDataSet1
    Left = 280
    Top = 48
  end
end
