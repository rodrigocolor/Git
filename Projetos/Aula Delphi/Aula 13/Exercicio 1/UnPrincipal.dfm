object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'FormPrincipal'
  ClientHeight = 678
  ClientWidth = 449
  Color = clBtnFace
  Constraints.MinHeight = 717
  Constraints.MinWidth = 465
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    449
    678)
  PixelsPerInch = 96
  TextHeight = 13
  object lbledt1: TLabeledEdit
    Left = 72
    Top = 32
    Width = 325
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 78
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome do Cliente'
    TabOrder = 0
    OnKeyPress = lbledt1KeyPress
  end
  object mmoTotal: TMemo
    Left = 8
    Top = 344
    Width = 433
    Height = 326
    Anchors = [akLeft, akTop, akRight, akBottom]
    ReadOnly = True
    TabOrder = 2
  end
  object grpInfo: TGroupBox
    Left = 8
    Top = 59
    Width = 433
    Height = 255
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    DesignSize = (
      433
      255)
    object lblTipoQuant: TLabel
      Left = 229
      Top = 59
      Width = 13
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Un'
      ExplicitLeft = 225
    end
    object Label1: TLabel
      Left = 232
      Top = 36
      Width = 63
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Quantidade: '
      ExplicitLeft = 228
    end
    object Label3: TLabel
      Left = 232
      Top = 108
      Width = 67
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Valor unitario:'
      ExplicitLeft = 228
    end
    object Label2: TLabel
      Left = 229
      Top = 130
      Width = 13
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'R$'
      ExplicitLeft = 225
    end
    object lblSub: TLabel
      Left = 237
      Top = 162
      Width = 67
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Valor unitario:'
      ExplicitLeft = 233
    end
    object Label5: TLabel
      Left = 229
      Top = 184
      Width = 13
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'R$'
      ExplicitLeft = 225
    end
    object lst1: TListBox
      Left = 24
      Top = 36
      Width = 169
      Height = 197
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      Items.Strings = (
        'Arroz'
        'Feijao'
        'Bacon'
        'Farinha de mandioca'
        'Brocolis'
        'Balao'
        'Carne'
        'Espeto'
        'Limao'
        'Bergamota'
        'Shoyo'
        'Molho de Pimenta'
        'Alho'
        'Salsicha'
        'Pao'
        'Tomate'
        'Coxa'
        'Sobrecoxa'
        'Costela'
        'Porco')
      TabOrder = 0
      OnClick = lst1Click
      OnKeyPress = lst1KeyPress
    end
    object edtVlr: TEdit
      Left = 248
      Top = 127
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 2
      Text = '0,00'
      OnKeyPress = edtVlrKeyPress
      OnKeyUp = edtVlrKeyUp
    end
    object btnAdd: TBitBtn
      Left = 251
      Top = 211
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Adicionar'
      TabOrder = 4
      OnClick = btnAddClick
    end
    object edtSub: TEdit
      Left = 248
      Top = 181
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      Enabled = False
      TabOrder = 3
      Text = '0,00'
      OnKeyPress = edtVlrKeyPress
    end
    object edtQtd: TEdit
      Left = 248
      Top = 56
      Width = 77
      Height = 21
      Anchors = [akTop, akRight]
      NumbersOnly = True
      TabOrder = 1
      OnKeyPress = edtQtdKeyPress
    end
  end
  object btnSalvar: TBitBtn
    Left = 168
    Top = 318
    Width = 105
    Height = 25
    Anchors = []
    Caption = 'Finalizar venda'
    TabOrder = 3
    OnClick = btnSalvarClick
  end
  object dlgSaveTot: TSaveDialog
    DefaultExt = '.txt'
    Filter = 'Texto|.txt'
    Left = 320
    Top = 320
  end
end
