object frmCalculadora: TfrmCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 201
  ClientWidth = 447
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
    Left = 272
    Top = 11
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtVal1: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    Text = 'Valor 1'
  end
  object edtVal2: TEdit
    Left = 135
    Top = 8
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    Text = 'Valor 2'
  end
  object btnSoma: TButton
    Left = 8
    Top = 35
    Width = 41
    Height = 25
    Caption = '+'
    TabOrder = 2
    OnClick = btnSomaClick
  end
  object btnRaiz: TButton
    Left = 55
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Ra'#237'z Quadr.'
    TabOrder = 3
    OnClick = btnRaizClick
  end
  object btnPot: TButton
    Left = 136
    Top = 35
    Width = 41
    Height = 25
    Caption = '^3'
    TabOrder = 4
    OnClick = btnPotClick
  end
  object btnCondicao: TButton
    Left = 183
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Condi'#231#227'o'
    TabOrder = 5
    OnClick = btnCondicaoClick
  end
end
