object frmFunctions: TfrmFunctions
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Functions'
  ClientHeight = 63
  ClientWidth = 343
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
    Left = 8
    Top = 35
    Width = 45
    Height = 13
    Caption = 'Resposta'
  end
  object edtValor: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    Text = 'Valor'
  end
  object btnVerificar: TButton
    Left = 135
    Top = 6
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 1
    OnClick = btnVerificarClick
  end
  object btnAnteriorRepeticoes: TButton
    Left = 216
    Top = 6
    Width = 113
    Height = 25
    Caption = 'Anterior (Repeti'#231#245'es)'
    TabOrder = 2
    OnClick = btnAnteriorRepeticoesClick
  end
end
