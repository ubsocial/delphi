object frmInicio: TfrmInicio
  Left = 0
  Top = 0
  Caption = 'In'#237'cio'
  ClientHeight = 382
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTexto: TLabel
    Left = 8
    Top = 16
    Width = 51
    Height = 13
    Caption = 'Texto aqui'
  end
  object lblSelecionada: TLabel
    Left = 334
    Top = 130
    Width = 90
    Height = 13
    Caption = 'Op'#231#227'o selecionada'
  end
  object lblAltSelecionada: TLabel
    Left = 525
    Top = 130
    Width = 112
    Height = 13
    Caption = 'Alternativa selecionada'
  end
  object lblChecado: TLabel
    Left = 525
    Top = 205
    Width = 47
    Height = 13
    Caption = 'Checado?'
  end
  object lblClicada: TLabel
    Left = 28
    Top = 311
    Width = 66
    Height = 13
    Caption = 'Op'#231#227'o clicada'
  end
  object lblComboSelecionada: TLabel
    Left = 151
    Top = 311
    Width = 91
    Height = 13
    Caption = 'Op'#231#227'o Selecionada'
  end
  object btnClique: TButton
    Left = 8
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Clique'
    TabOrder = 0
    OnClick = btnCliqueClick
  end
  object edtTexto: TEdit
    Left = 8
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Texto aqui'
  end
  object memTexto: TMemo
    Left = 135
    Top = 35
    Width = 185
    Height = 89
    Enabled = False
    Lines.Strings = (
      'memTexto')
    TabOrder = 2
  end
  object rgpSelecione: TRadioGroup
    Left = 334
    Top = 19
    Width = 185
    Height = 105
    Caption = 'Selecione'
    Items.Strings = (
      'Op'#231#227'o 1'
      'Op'#231#227'o 2'
      'Op'#231#227'o 3')
    TabOrder = 3
    OnClick = rgpSelecioneClick
  end
  object clbSelecione: TCheckListBox
    Left = 525
    Top = 19
    Width = 121
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      'Alternativa 1'
      'Alternativa 2'
      'Alternativa 3')
    TabOrder = 4
    OnClick = clbSelecioneClick
  end
  object cbxChecado: TCheckBox
    Left = 525
    Top = 182
    Width = 97
    Height = 17
    Caption = 'Checado'
    TabOrder = 5
    OnClick = cbxChecadoClick
  end
  object lstAlternativas: TListBox
    Left = 24
    Top = 208
    Width = 121
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      'Alternativa 1'
      'Alternativa 2'
      'Alternativa 3')
    TabOrder = 6
    OnClick = lstAlternativasClick
  end
  object cmbSelecione: TComboBox
    Left = 151
    Top = 208
    Width = 145
    Height = 21
    TabOrder = 7
    Text = 'Selecione'
    OnChange = cmbSelecioneChange
    Items.Strings = (
      'Opt 1'
      'Opt 2'
      'Opt 3')
  end
  object btnMensagem: TButton
    Left = 344
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Mensagem'
    TabOrder = 8
    OnClick = btnMensagemClick
  end
  object btnProximo: TButton
    Left = 664
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Pr'#243'ximo'
    TabOrder = 9
    OnClick = btnProximoClick
  end
end
