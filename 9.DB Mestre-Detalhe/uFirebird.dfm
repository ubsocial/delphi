object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 133
  ClientWidth = 238
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
      object optClientes2: TMenuItem
        Caption = 'Clientes2'
        OnClick = optClientes2Click
      end
      object optFornecedores: TMenuItem
        Caption = 'Fornecedores'
        OnClick = optFornecedoresClick
      end
      object optProdutos: TMenuItem
        Caption = 'Produtos'
        OnClick = optProdutosClick
      end
      object optVendas: TMenuItem
        Caption = 'Vendas'
        OnClick = optVendasClick
      end
      object optVendedores: TMenuItem
        Caption = 'Vendedores'
        OnClick = optVendedoresClick
      end
    end
    object Consutas1: TMenuItem
      Caption = 'Pesquisar'
      object optConsultas: TMenuItem
        Caption = 'Consultas'
        OnClick = optConsultasClick
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object optRelProdutos: TMenuItem
        Caption = 'Produtos'
        OnClick = optRelProdutosClick
      end
    end
  end
end
