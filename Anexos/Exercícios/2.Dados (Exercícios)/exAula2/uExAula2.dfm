object frmExercicio1: TfrmExercicio1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Exerc'#237'cio 1'
  ClientHeight = 103
  ClientWidth = 445
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
    Left = 262
    Top = 11
    Width = 48
    Height = 13
    Caption = 'Resultado'
    Visible = False
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
    Width = 33
    Height = 25
    Caption = '+'
    TabOrder = 2
    OnClick = btnSomaClick
  end
  object btnSubtracao: TButton
    Left = 47
    Top = 35
    Width = 33
    Height = 25
    Caption = '-'
    TabOrder = 3
    OnClick = btnSubtracaoClick
  end
  object btnMultiplicacao: TButton
    Left = 86
    Top = 35
    Width = 33
    Height = 25
    Caption = '*'
    TabOrder = 4
    OnClick = btnMultiplicacaoClick
  end
  object btnDivisao: TButton
    Left = 125
    Top = 35
    Width = 33
    Height = 25
    Caption = '/'
    TabOrder = 5
    OnClick = btnDivisaoClick
  end
  object btnRaiz: TButton
    Left = 164
    Top = 35
    Width = 33
    Height = 25
    Caption = #8730
    TabOrder = 6
    OnClick = btnRaizClick
  end
  object btnQuadrado: TButton
    Left = 86
    Top = 66
    Width = 33
    Height = 25
    Caption = '^2'
    TabOrder = 7
    OnClick = btnQuadradoClick
  end
  object btnCubo: TButton
    Left = 125
    Top = 66
    Width = 33
    Height = 25
    Caption = '^3'
    TabOrder = 8
    OnClick = btnCuboClick
  end
  object btnAbsoluto: TButton
    Left = 8
    Top = 66
    Width = 33
    Height = 25
    Caption = 'ABS'
    TabOrder = 9
    OnClick = btnAbsolutoClick
  end
  object btnPotenciacao: TButton
    Left = 47
    Top = 66
    Width = 33
    Height = 25
    Caption = 'POW'
    TabOrder = 10
    OnClick = btnPotenciacaoClick
  end
  object btnProximo: TButton
    Left = 362
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Pr'#243'ximo'
    TabOrder = 11
    OnClick = btnProximoClick
  end
end
