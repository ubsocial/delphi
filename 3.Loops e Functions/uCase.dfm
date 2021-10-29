object frmCase: TfrmCase
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Case'
  ClientHeight = 95
  ClientWidth = 271
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblResposta: TLabel
    Left = 96
    Top = 11
    Width = 45
    Height = 13
    Caption = 'Resposta'
  end
  object edtValor: TEdit
    Left = 8
    Top = 8
    Width = 75
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    Text = 'Valor'
  end
  object btnVerificar: TButton
    Left = 8
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 1
    OnClick = btnVerificarClick
  end
  object btnProximoFor: TButton
    Left = 96
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Pr'#243'ximo (For)'
    TabOrder = 2
    OnClick = btnProximoForClick
  end
  object btnImagem: TButton
    Left = 96
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Imagem'
    TabOrder = 3
    OnClick = btnImagemClick
  end
end
