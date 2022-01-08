object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 185
  ClientWidth = 402
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
    Left = 32
    Top = 16
    object abelas1: TMenuItem
      Caption = 'Tabelas'
      object optClientes: TMenuItem
        Caption = 'Clientes'
        OnClick = optClientesClick
      end
      object optFornecedores: TMenuItem
        Caption = 'Fornecedores'
        OnClick = optFornecedoresClick
      end
      object optItens: TMenuItem
        Caption = #205'tens'
      end
      object optProdutos: TMenuItem
        Caption = 'Produtos'
        OnClick = optProdutosClick
      end
      object optVendas: TMenuItem
        Caption = 'Vendas'
      end
      object optVendedores: TMenuItem
        Caption = 'Vendedores'
      end
    end
  end
end
