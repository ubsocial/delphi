object frmFor: TfrmFor
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'For'
  ClientHeight = 66
  ClientWidth = 891
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
    Top = 37
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtValor: TEdit
    Left = 8
    Top = 10
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    Text = 'Valor'
  end
  object btnGerar: TButton
    Left = 135
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 1
    OnClick = btnGerarClick
  end
  object btnAnteriorCase: TButton
    Left = 216
    Top = 8
    Width = 89
    Height = 25
    Caption = 'Anterior (Case)'
    TabOrder = 2
    OnClick = btnAnteriorCaseClick
  end
  object btnProximoForMemo: TButton
    Left = 311
    Top = 8
    Width = 106
    Height = 25
    Caption = 'Pr'#243'ximo (For Memo)'
    TabOrder = 3
    OnClick = btnProximoForMemoClick
  end
end
