object frmExercicio2: TfrmExercicio2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Exerc'#237'cio2'
  ClientHeight = 181
  ClientWidth = 190
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblResultado: TLabel
    Left = 8
    Top = 112
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object btnVermelho: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Vermelho'
    TabOrder = 0
    OnClick = btnVermelhoClick
  end
  object btnAmarelo: TButton
    Left = 8
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Amarelo'
    TabOrder = 1
    OnClick = btnAmareloClick
  end
  object btnVerde: TButton
    Left = 8
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Verde'
    TabOrder = 2
    OnClick = btnVerdeClick
  end
  object btnAnterior: TButton
    Left = 112
    Top = 148
    Width = 75
    Height = 25
    Caption = 'Anterior'
    TabOrder = 3
    OnClick = btnAnteriorClick
  end
end
