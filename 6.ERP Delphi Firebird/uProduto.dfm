object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  Caption = 'frmProdutos'
  ClientHeight = 261
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 24
    Height = 13
    Caption = 'Valor'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 128
    Width = 56
    Height = 13
    Caption = 'Quantidade'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 168
    Width = 75
    Height = 13
    Caption = 'Quantidade min'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 8
    Top = 208
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 56
    Height = 21
    DataField = 'CDPRODUTO'
    DataSource = dm.dsProdutos
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 251
    Height = 21
    DataField = 'DCPRODUTO'
    DataSource = dm.dsProdutos
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 104
    Width = 251
    Height = 21
    DataField = 'VLPRODUTO'
    DataSource = dm.dsProdutos
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 144
    Width = 251
    Height = 21
    DataField = 'QTESTOQUE'
    DataSource = dm.dsProdutos
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 184
    Width = 251
    Height = 21
    DataField = 'QTMINIMA'
    DataSource = dm.dsProdutos
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 70
    Top = 21
    Width = 188
    Height = 25
    DataSource = dm.dsProdutos
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 5
  end
  object btnSair: TBitBtn
    Left = 264
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 6
    OnClick = btnSairClick
  end
  object btnInserir: TBitBtn
    Left = 265
    Top = 73
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 7
    OnClick = btnInserirClick
  end
  object btnEditar: TBitBtn
    Left = 265
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 8
    OnClick = btnEditarClick
  end
  object btnExcluir: TBitBtn
    Left = 265
    Top = 135
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 9
    OnClick = btnExcluirClick
  end
  object btnCancelar: TBitBtn
    Left = 265
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 10
    OnClick = btnCancelarClick
  end
  object btnConfirmar: TBitBtn
    Left = 265
    Top = 223
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    Enabled = False
    TabOrder = 11
    OnClick = btnConfirmarClick
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 227
    Width = 145
    Height = 21
    DataField = 'CDFORNECEDOR'
    DataSource = dm.dsProdutos
    KeyField = 'CDFORNECEDOR'
    ListField = 'DCFORNECEDOR'
    ListSource = dm.dsFornecedores
    TabOrder = 12
  end
end
