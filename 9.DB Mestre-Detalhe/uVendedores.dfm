object frmVendedores: TfrmVendedores
  Left = 0
  Top = 0
  Caption = 'Vendedores'
  ClientHeight = 128
  ClientWidth = 313
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
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 57
    Height = 21
    DataField = 'CDVENDEDOR'
    DataSource = dm.dsVendedores
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 134
    Height = 21
    DataField = 'DCVENDEDOR'
    DataSource = dm.dsVendedores
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 71
    Top = 21
    Width = 224
    Height = 25
    DataSource = dm.dsVendedores
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 2
  end
  object btnInserir: TBitBtn
    Left = 148
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 3
    OnClick = btnInserirClick
  end
  object btnConfirmar: TBitBtn
    Left = 229
    Top = 93
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    Enabled = False
    TabOrder = 4
    OnClick = btnConfirmarClick
  end
  object btnCancelar: TBitBtn
    Left = 148
    Top = 93
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 5
    OnClick = btnCancelarClick
  end
end
