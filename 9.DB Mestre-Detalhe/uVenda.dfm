object frmVenda: TfrmVenda
  Left = 0
  Top = 0
  Caption = 'frmVenda'
  ClientHeight = 483
  ClientWidth = 363
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
    Width = 58
    Height = 13
    Caption = 'Num. venda'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 56
    Height = 13
    Caption = 'Data venda'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 91
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object Label4: TLabel
    Left = 8
    Top = 131
    Width = 46
    Height = 13
    Caption = 'Vendedor'
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 81
    Height = 21
    DataField = 'NRVENDA'
    DataSource = dm.dsVendas
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 106
    Height = 21
    DataField = 'DTVENDA'
    DataSource = dm.dsVendas
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 104
    Width = 145
    Height = 21
    DataField = 'CDCLIENTE'
    DataSource = dm.dsVendas
    KeyField = 'CDCLIENTE'
    ListField = 'DCCLIENTE'
    ListSource = dm.dsClientes
    TabOrder = 2
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 8
    Top = 144
    Width = 145
    Height = 21
    DataField = 'CDVENDEDOR'
    DataSource = dm.dsVendas
    KeyField = 'CDVENDEDOR'
    ListField = 'DCVENDEDOR'
    ListSource = dm.dsVendedores
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 95
    Top = 21
    Width = 164
    Height = 25
    DataSource = dm.dsVendas
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 4
  end
  object btnSair: TBitBtn
    Left = 265
    Top = 21
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 5
    OnClick = btnSairClick
  end
  object btnInserir: TBitBtn
    Left = 265
    Top = 78
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 6
    OnClick = btnInserirClick
  end
  object btnEditar: TBitBtn
    Left = 265
    Top = 109
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 7
    OnClick = btnEditarClick
  end
  object btnExcluir: TBitBtn
    Left = 265
    Top = 140
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 8
    OnClick = btnExcluirClick
  end
  object btnConfirmar: TBitBtn
    Left = 89
    Top = 171
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    Enabled = False
    TabOrder = 9
    OnClick = btnConfirmarClick
  end
  object btnCancelar: TBitBtn
    Left = 8
    Top = 171
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 10
    OnClick = btnCancelarClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 242
    Width = 332
    Height = 233
    DataSource = dm.dsItens
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NRVENDA'
        Title.Caption = 'N'#186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NRITEM'
        Title.Caption = #205'tem'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DCPRODUTO'
        Title.Caption = 'Produto'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CDPRODUTO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'QTVENDA'
        Title.Caption = 'Qtd'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLPRODUTO'
        Title.Caption = 'Vlr. Unit'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 8
    Top = 211
    Width = 240
    Height = 25
    DataSource = dm.dsItens
    TabOrder = 12
  end
end
