object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  Caption = 'frmClientes'
  ClientHeight = 304
  ClientWidth = 383
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
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 128
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 168
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 8
    Top = 208
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 8
    Top = 248
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit7
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 81
    Height = 21
    DataField = 'CDCLIENTE'
    DataSource = dm.dsClientes
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 264
    Height = 21
    DataField = 'DCCLIENTE'
    DataSource = dm.dsClientes
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 104
    Width = 264
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dm.dsClientes
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 144
    Width = 264
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dm.dsClientes
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 184
    Width = 264
    Height = 21
    DataField = 'CIDADE'
    DataSource = dm.dsClientes
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 224
    Width = 134
    Height = 21
    DataField = 'TELEFONE'
    DataSource = dm.dsClientes
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 8
    Top = 264
    Width = 108
    Height = 21
    DataField = 'CEP'
    DataSource = dm.dsClientes
    TabOrder = 6
  end
  object DBNavigator1: TDBNavigator
    Left = 128
    Top = 21
    Width = 144
    Height = 25
    DataSource = dm.dsClientes
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 7
  end
  object btnSair: TBitBtn
    Left = 278
    Top = 21
    Width = 75
    Height = 26
    Caption = 'Sair'
    TabOrder = 8
    OnClick = btnSairClick
  end
  object btnInserir: TBitBtn
    Left = 278
    Top = 83
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 9
    OnClick = btnInserirClick
  end
  object btnEditar: TBitBtn
    Left = 278
    Top = 114
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 10
    OnClick = btnEditarClick
  end
  object btnExcluir: TBitBtn
    Left = 278
    Top = 145
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 11
    OnClick = btnExcluirClick
  end
  object btnCancelar: TBitBtn
    Left = 278
    Top = 231
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 12
    OnClick = btnCancelarClick
  end
  object btnConfirmar: TBitBtn
    Left = 278
    Top = 262
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    Enabled = False
    TabOrder = 13
    OnClick = btnConfirmarClick
  end
end
