object frmRelatorio: TfrmRelatorio
  Left = 0
  Top = 0
  Caption = 'frmRelatorio'
  ClientHeight = 517
  ClientWidth = 831
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rltRel: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = dm.dsProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = rltRelBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 43
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 679
        Height = 43
        Align = faClient
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 18
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 679
        Top = 0
        Width = 39
        Height = 43
        Align = faRightMost
        Alignment = taRightJustify
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 81
      Width = 718
      Height = 40
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 16
        Top = 21
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel3: TRLLabel
        Left = 98
        Top = 21
        Width = 295
        Height = 16
        Caption = 'Descri'#231#227'o'
      end
      object RLLabel4: TRLLabel
        Left = 544
        Top = 21
        Width = 77
        Height = 16
        Caption = 'Qtd Estoque'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 121
      Width = 718
      Height = 56
      object RLDBText1: TRLDBText
        Left = 16
        Top = 24
        Width = 44
        Height = 16
        DataField = 'CDPRODUTO'
        DataSource = dm.dsProdutos
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 98
        Top = 24
        Width = 295
        Height = 16
        DataField = 'DCPRODUTO'
        DataSource = dm.dsProdutos
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 544
        Top = 24
        Width = 77
        Height = 16
        DataField = 'QTESTOQUE'
        DataSource = dm.dsProdutos
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 177
      Width = 718
      Height = 48
      BandType = btSummary
      object RLLabel5: TRLLabel
        Left = 472
        Top = 16
        Width = 36
        Height = 16
        Caption = 'Total:'
      end
      object RLDBResult1: TRLDBResult
        Left = 544
        Top = 16
        Width = 109
        Height = 16
        DataField = 'QTESTOQUE'
        DataSource = dm.dsProdutos
        Holder = RLDBText3
        Info = riSum
        Text = ''
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 225
      Width = 718
      Height = 32
      BandType = btFooter
      object RLSystemInfo3: TRLSystemInfo
        Left = 628
        Top = 13
        Width = 87
        Height = 16
        Info = itPageNumber
        Text = ''
      end
    end
  end
end
