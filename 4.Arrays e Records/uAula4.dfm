object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 456
  ClientWidth = 931
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblDataHora: TLabel
    Left = 128
    Top = 77
    Width = 112
    Height = 13
    Caption = 'Data e Hora do sistema'
  end
  object btnAbrirPopupMenu: TButton
    Left = 8
    Top = 72
    Width = 105
    Height = 25
    Caption = 'Abrir PopupMenu'
    TabOrder = 0
    OnClick = btnAbrirPopupMenuClick
  end
  object btnFecharPopupMenu: TButton
    Left = 8
    Top = 103
    Width = 105
    Height = 25
    Caption = 'Fechar PopupMenu'
    TabOrder = 1
    OnClick = btnFecharPopupMenuClick
  end
  object memLista: TMemo
    Left = 8
    Top = 168
    Width = 75
    Height = 249
    Lines.Strings = (
      'memLista')
    TabOrder = 2
  end
  object btnGerarLista: TButton
    Left = 8
    Top = 137
    Width = 75
    Height = 25
    Caption = 'Gerar Lista'
    TabOrder = 3
    OnClick = btnGerarListaClick
  end
  object stgMat: TStringGrid
    Left = 89
    Top = 168
    Width = 384
    Height = 145
    TabOrder = 4
    ColWidths = (
      64
      64
      64
      64
      64)
  end
  object bitBtnGerarMatriz: TBitBtn
    Left = 89
    Top = 137
    Width = 75
    Height = 25
    Caption = 'Gerar Matriz'
    TabOrder = 5
    OnClick = bitBtnGerarMatrizClick
  end
  object btnPontos: TButton
    Left = 128
    Top = 106
    Width = 75
    Height = 25
    Caption = 'Pontos'
    TabOrder = 6
    OnClick = btnPontosClick
  end
  object popMenuArquivo: TPopupMenu
    Left = 24
    Top = 16
    object optArquivo: TMenuItem
      Caption = 'Arquivo'
    end
    object Abrir1: TMenuItem
      Caption = 'Abrir'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
    end
    object optSair: TMenuItem
      Caption = 'Sair'
    end
  end
  object MainMenu1: TMainMenu
    Left = 112
    Top = 16
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Abrir2: TMenuItem
        Caption = 'Abrir'
      end
      object Fechar2: TMenuItem
        Caption = 'Fechar'
      end
      object optSalvar: TMenuItem
        Caption = 'Salvar'
      end
    end
    object Editar1: TMenuItem
      Caption = 'Editar'
      object Inicio1: TMenuItem
        Caption = 'Inicio'
      end
      object Final1: TMenuItem
        Caption = 'Final'
      end
    end
  end
  object tmrDataHora: TTimer
    OnTimer = tmrDataHoraTimer
    Left = 184
    Top = 16
  end
end
