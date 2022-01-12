object frmClientes2: TfrmClientes2
  Left = 0
  Top = 0
  Caption = 'frmClientes2'
  ClientHeight = 344
  ClientWidth = 404
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
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 96
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 136
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 176
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 8
    Top = 216
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 8
    Top = 256
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit7
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 32
    Width = 65
    Height = 21
    DataField = 'CDCLIENTE'
    DataSource = dm.dsClientes2
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 72
    Width = 264
    Height = 21
    DataField = 'DCCLIENTE'
    DataSource = dm.dsClientes2
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 112
    Width = 264
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dm.dsClientes2
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 152
    Width = 264
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dm.dsClientes2
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 192
    Width = 264
    Height = 21
    DataField = 'CIDADE'
    DataSource = dm.dsClientes2
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 232
    Width = 134
    Height = 21
    DataField = 'TELEFONE'
    DataSource = dm.dsClientes2
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 8
    Top = 272
    Width = 108
    Height = 21
    DataField = 'CEP'
    DataSource = dm.dsClientes2
    TabOrder = 6
  end
  object DBNavigator1: TDBNavigator
    Left = 79
    Top = 29
    Width = 220
    Height = 25
    DataSource = dm.dsClientes2
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 7
  end
  object btnSair: TBitBtn
    Left = 305
    Top = 29
    Width = 75
    Height = 26
    Caption = 'Sair'
    TabOrder = 8
    OnClick = btnSairClick
  end
  object btnInserir: TBitBtn
    Left = 289
    Top = 70
    Width = 75
    Height = 26
    Caption = 'Inserir'
    TabOrder = 9
    OnClick = btnInserirClick
  end
  object btnEditar: TBitBtn
    Left = 289
    Top = 102
    Width = 75
    Height = 26
    Caption = 'Editar'
    TabOrder = 10
    OnClick = btnEditarClick
  end
  object btnCancelar: TBitBtn
    Left = 289
    Top = 238
    Width = 75
    Height = 26
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 11
    OnClick = btnCancelarClick
  end
  object btnConfirmar: TBitBtn
    Left = 289
    Top = 270
    Width = 75
    Height = 26
    Caption = 'Confirmar'
    Enabled = False
    TabOrder = 12
    OnClick = btnConfirmarClick
  end
  object btnExcluir: TBitBtn
    Left = 289
    Top = 134
    Width = 75
    Height = 26
    Caption = 'Excluir'
    TabOrder = 13
    OnClick = btnExcluirClick
  end
end
