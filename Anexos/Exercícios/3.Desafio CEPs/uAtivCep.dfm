object AtivCepMateus: TAtivCepMateus
  Left = 0
  Top = 0
  Caption = 'Cep'
  ClientHeight = 84
  ClientWidth = 190
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblCep: TLabel
    Left = 87
    Top = 35
    Width = 3
    Height = 13
  end
  object imgBandeira: TImage
    Left = 8
    Top = 35
    Width = 73
    Height = 38
    Stretch = True
  end
  object cmbUf: TComboBox
    Left = 8
    Top = 8
    Width = 57
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    OnChange = cmbUfChange
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
  end
  object cmbCid: TComboBox
    Left = 71
    Top = 8
    Width = 111
    Height = 21
    Style = csDropDownList
    TabOrder = 1
    OnChange = cmbCidChange
  end
  object lstRes: TListBox
    Left = 87
    Top = 48
    Width = 95
    Height = 25
    ItemHeight = 13
    TabOrder = 2
    Visible = False
  end
end
