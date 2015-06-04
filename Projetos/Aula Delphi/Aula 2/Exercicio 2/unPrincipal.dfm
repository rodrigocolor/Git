object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Exemplo 2'
  ClientHeight = 131
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblNome: TLabel
    Left = 51
    Top = 11
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object lblSobrenom: TLabel
    Left = 24
    Top = 38
    Width = 54
    Height = 13
    Caption = 'Sobrenoma'
  end
  object edtNome: TEdit
    Left = 84
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtSobrenome: TEdit
    Left = 84
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnNome: TButton
    Left = 224
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Add to list'
    TabOrder = 2
    OnClick = btnNomeClick
  end
  object btnSobre: TButton
    Left = 224
    Top = 33
    Width = 75
    Height = 25
    Caption = 'Add to listo'
    TabOrder = 3
    OnClick = btnSobreClick
  end
  object CbbNome: TComboBox
    Left = 320
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 4
    OnChange = CbbNomeChange
  end
  object cbbSobrenome: TComboBox
    Left = 320
    Top = 35
    Width = 145
    Height = 21
    TabOrder = 5
    OnChange = cbbSobrenomeChange
  end
  object btnNomeCompleto: TButton
    Left = 208
    Top = 98
    Width = 91
    Height = 25
    Caption = 'Nome Completo'
    TabOrder = 6
    OnClick = btnNomeCompletoClick
  end
end
