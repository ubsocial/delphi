object frmRepeticoes: TfrmRepeticoes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Repeti'#231#245'es'
  ClientHeight = 356
  ClientWidth = 314
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnWhileDo: TButton
    Left = 8
    Top = 32
    Width = 75
    Height = 25
    Caption = 'While Do'
    TabOrder = 0
    OnClick = btnWhileDoClick
  end
  object btnRepeatUntil: TButton
    Left = 89
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Repeat Until'
    TabOrder = 1
    OnClick = btnRepeatUntilClick
  end
  object edtIntervalo: TEdit
    Left = 8
    Top = 5
    Width = 156
    Height = 21
    NumbersOnly = True
    TabOrder = 2
    Text = 'Intervalo'
  end
  object memResposta: TMemo
    Left = 8
    Top = 63
    Width = 156
    Height = 266
    Enabled = False
    Lines.Strings = (
      'memResposta')
    TabOrder = 3
  end
  object btnAnteriorCaseListbox: TButton
    Left = 170
    Top = 3
    Width = 127
    Height = 25
    Caption = 'Anterior (Case Listbox)'
    TabOrder = 4
    OnClick = btnAnteriorCaseListboxClick
  end
  object btnProximoFunctions: TButton
    Left = 170
    Top = 32
    Width = 127
    Height = 25
    Caption = 'Pr'#243'ximo (Functions)'
    TabOrder = 5
    OnClick = btnProximoFunctionsClick
  end
end
