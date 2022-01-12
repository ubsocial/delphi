object frmConsultas: TfrmConsultas
  Left = 0
  Top = 0
  Caption = 'frmConsultas'
  ClientHeight = 331
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cmbTabela: TComboBox
    Left = 8
    Top = 8
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    Items.Strings = (
      'Clientes'
      'Fornecedores'
      'Produtos')
  end
  object rgpSelecionar: TRadioGroup
    Left = 8
    Top = 35
    Width = 185
    Height = 105
    Caption = 'Pesquisar por'
    ItemIndex = 0
    Items.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TabOrder = 1
  end
  object rgpOrdenar: TRadioGroup
    Left = 8
    Top = 146
    Width = 185
    Height = 105
    Caption = 'Ordenamento'
    ItemIndex = 0
    Items.Strings = (
      'Normal'
      'Decrescente')
    TabOrder = 2
  end
  object edtConsultar: TEdit
    Left = 8
    Top = 257
    Width = 185
    Height = 21
    TabOrder = 3
    Text = 'Buscar por'
  end
  object btnPesquisar: TBitBtn
    Left = 8
    Top = 284
    Width = 185
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 4
    OnClick = btnPesquisarClick
  end
  object DBGrid1: TDBGrid
    Left = 199
    Top = 8
    Width = 320
    Height = 301
    DataSource = dm.dsConsulta
    Enabled = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
