object frmFornecedores: TfrmFornecedores
  Left = 0
  Top = 0
  Caption = 'frmFornecedores'
  ClientHeight = 313
  ClientWidth = 380
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
    Left = 16
    Top = 16
    Width = 83
    Height = 13
    Caption = 'CDFORNECEDOR'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 83
    Height = 13
    Caption = 'DCFORNECEDOR'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 96
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 136
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 16
    Top = 176
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 16
    Top = 216
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 16
    Top = 256
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit7
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 32
    Width = 73
    Height = 21
    DataField = 'CDFORNECEDOR'
    DataSource = dm.dsFornecedores
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 72
    Width = 264
    Height = 21
    DataField = 'DCFORNECEDOR'
    DataSource = dm.dsFornecedores
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 112
    Width = 264
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dm.dsFornecedores
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 152
    Width = 264
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dm.dsFornecedores
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 192
    Width = 264
    Height = 21
    DataField = 'CIDADE'
    DataSource = dm.dsFornecedores
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 16
    Top = 232
    Width = 134
    Height = 21
    DataField = 'TELEFONE'
    DataSource = dm.dsFornecedores
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 16
    Top = 272
    Width = 108
    Height = 21
    DataField = 'CEP'
    DataSource = dm.dsFornecedores
    TabOrder = 6
  end
  object DBNavigator1: TDBNavigator
    Left = 120
    Top = 28
    Width = 160
    Height = 25
    DataSource = dm.dsFornecedores
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 7
  end
  object btnSair: TBitBtn
    Left = 286
    Top = 29
    Width = 75
    Height = 26
    Caption = 'Sair'
    TabOrder = 8
    OnClick = btnSairClick
  end
  object btnInserir: TBitBtn
    Left = 286
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 9
    OnClick = btnInserirClick
  end
  object btnEditar: TBitBtn
    Left = 286
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 10
    OnClick = btnEditarClick
  end
  object btnExcluir: TBitBtn
    Left = 286
    Top = 172
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 11
    OnClick = btnExcluirClick
  end
  object btnCancelar: TBitBtn
    Left = 286
    Top = 239
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 12
    OnClick = btnCancelarClick
  end
  object btnConfirmar: TBitBtn
    Left = 286
    Top = 270
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    Enabled = False
    TabOrder = 13
    OnClick = btnConfirmarClick
  end
end
