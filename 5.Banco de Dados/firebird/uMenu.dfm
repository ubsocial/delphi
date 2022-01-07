object frmMenu: TfrmMenu
  Left = 0
  Top = 0
  Caption = 'frmMenu'
  ClientHeight = 104
  ClientWidth = 241
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
  object MainMenu1: TMainMenu
    Left = 24
    Top = 16
    object abelas1: TMenuItem
      Caption = 'Tabelas'
      object optClientes: TMenuItem
        Caption = 'Clientes'
        OnClick = optClientesClick
      end
    end
  end
end
