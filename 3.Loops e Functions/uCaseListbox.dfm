object frmCaseListbox: TfrmCaseListbox
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Case Listbox'
  ClientHeight = 302
  ClientWidth = 258
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblCidade: TLabel
    Left = 8
    Top = 111
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object lstCidade: TListBox
    Left = 8
    Top = 8
    Width = 121
    Height = 97
    Enabled = False
    ItemHeight = 13
    Items.Strings = (
      'Bras'#237'lia'
      'Natal'
      'Porto Alegre')
    TabOrder = 0
    OnClick = lstCidadeClick
  end
  object Button1: TButton
    Left = 135
    Top = 8
    Width = 114
    Height = 25
    Caption = 'Anterior (For Memo)'
    TabOrder = 1
    OnClick = Button1Click
  end
  object edtCidade: TEdit
    Left = 135
    Top = 189
    Width = 113
    Height = 21
    TabOrder = 2
    Text = 'Cidade'
  end
  object btnAdicionar: TButton
    Left = 135
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 3
    OnClick = btnAdicionarClick
  end
  object memCidades2: TMemo
    Left = 8
    Top = 144
    Width = 121
    Height = 89
    Enabled = False
    Lines.Strings = (
      'memCidades2')
    TabOrder = 4
  end
  object btnCarregarCidades: TButton
    Left = 135
    Top = 111
    Width = 113
    Height = 25
    Caption = 'Carregar cidades'
    TabOrder = 5
    OnClick = btnCarregarCidadesClick
  end
  object cmbCidades2: TComboBox
    Left = 8
    Top = 239
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Cidades carregadas'
  end
  object btnRemoverCidade: TButton
    Left = 135
    Top = 142
    Width = 113
    Height = 25
    Caption = 'Remover cidade'
    TabOrder = 7
    OnClick = btnRemoverCidadeClick
  end
  object btnProximoRepeticoes: TButton
    Left = 135
    Top = 39
    Width = 113
    Height = 25
    Caption = 'Pr'#243'ximo (Repeti'#231#245'es)'
    TabOrder = 8
    OnClick = btnProximoRepeticoesClick
  end
end
