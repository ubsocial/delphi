object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  Caption = 'frmProdutos'
  ClientHeight = 284
  ClientWidth = 405
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
    Top = 16
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 96
    Width = 24
    Height = 13
    Caption = 'Valor'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 136
    Width = 56
    Height = 13
    Caption = 'Quantidade'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 176
    Width = 53
    Height = 13
    Caption = 'Qtd m'#237'nima'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 8
    Top = 216
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 32
    Width = 56
    Height = 21
    DataField = 'CDPRODUTO'
    DataSource = dm.dsProdutos
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 72
    Width = 251
    Height = 21
    DataField = 'DCPRODUTO'
    DataSource = dm.dsProdutos
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 112
    Width = 251
    Height = 21
    DataField = 'VLPRODUTO'
    DataSource = dm.dsProdutos
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 152
    Width = 251
    Height = 21
    DataField = 'QTESTOQUE'
    DataSource = dm.dsProdutos
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 192
    Width = 251
    Height = 21
    DataField = 'QTMINIMA'
    DataSource = dm.dsProdutos
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 70
    Top = 29
    Width = 220
    Height = 25
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 5
  end
  object btnSair: TBitBtn
    Left = 296
    Top = 30
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 6
    OnClick = btnSairClick
  end
  object btnInserir: TBitBtn
    Left = 296
    Top = 91
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 7
    OnClick = btnInserirClick
  end
  object btnEditar: TBitBtn
    Left = 296
    Top = 122
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 8
    OnClick = btnEditarClick
  end
  object btnExcluir: TBitBtn
    Left = 296
    Top = 153
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 9
    OnClick = btnExcluirClick
  end
  object btnCancelar: TBitBtn
    Left = 296
    Top = 203
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 10
    OnClick = btnCancelarClick
  end
  object btnConfirmar: TBitBtn
    Left = 296
    Top = 230
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    Enabled = False
    TabOrder = 11
    OnClick = btnConfirmarClick
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 235
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
