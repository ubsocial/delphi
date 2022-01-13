object dm: Tdm
  OldCreateOrder = False
  Height = 207
  Width = 718
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Mateus Schwede\Desktop\ERP Delphi Firebird\DBL' +
        'OJA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Transaction = FDTransaction1
    Left = 168
    Top = 24
  end
  object tbClientes: TFDTable
    IndexFieldNames = 'CDCLIENTE'
    Connection = FDConnection1
    TableName = 'CLIENTES'
    Left = 56
    Top = 72
    object tbClientesCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
      Origin = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbClientesDCCLIENTE: TStringField
      FieldName = 'DCCLIENTE'
      Origin = 'DCCLIENTE'
      Size = 30
    end
    object tbClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object tbClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
    end
    object tbClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
    object tbClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 10
    end
    object tbClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 8
    end
  end
  object dsClientes: TDataSource
    DataSet = tbClientes
    Left = 56
    Top = 128
  end
  object tbClientes2: TFDTable
    IndexFieldNames = 'CDCLIENTE'
    Connection = FDConnection1
    TableName = 'CLIENTES'
    Left = 128
    Top = 72
    object tbClientes2CDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDCLIENTE'
      Origin = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbClientes2DCCLIENTE: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'DCCLIENTE'
      Origin = 'DCCLIENTE'
      Size = 30
    end
    object tbClientes2ENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object tbClientes2BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
    end
    object tbClientes2CIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
    object tbClientes2TELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '!\(99\)00000-0000;0;_'
      Size = 10
    end
    object tbClientes2CEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '00000\-999;0;_'
      Size = 8
    end
  end
  object dsClientes2: TDataSource
    DataSet = tbClientes2
    Left = 128
    Top = 128
  end
  object tbFornecedores: TFDTable
    IndexFieldNames = 'CDFORNECEDOR'
    Connection = FDConnection1
    TableName = 'FORNECEDORES'
    Left = 208
    Top = 72
    object tbFornecedoresCDFORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDFORNECEDOR'
      Origin = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbFornecedoresDCFORNECEDOR: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'DCFORNECEDOR'
      Origin = 'DCFORNECEDOR'
      Size = 30
    end
    object tbFornecedoresENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object tbFornecedoresBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
    end
    object tbFornecedoresCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
    object tbFornecedoresTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 10
    end
    object tbFornecedoresCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '00000\-999;0;_'
      Size = 8
    end
  end
  object dsFornecedores: TDataSource
    DataSet = tbFornecedores
    Left = 208
    Top = 128
  end
  object tbProdutos: TFDTable
    Active = True
    IndexFieldNames = 'CDPRODUTO'
    Connection = FDConnection1
    TableName = 'PRODUTOS'
    Left = 288
    Top = 72
    object tbProdutosCDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDPRODUTO'
      Origin = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbProdutosDCPRODUTO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DCPRODUTO'
      Origin = 'DCPRODUTO'
      Size = 30
    end
    object tbProdutosVLPRODUTO: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VLPRODUTO'
      Origin = 'VLPRODUTO'
      Precision = 18
      Size = 2
    end
    object tbProdutosQTESTOQUE: TFMTBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTESTOQUE'
      Origin = 'QTESTOQUE'
      Precision = 18
      Size = 2
    end
    object tbProdutosQTMINIMA: TFMTBCDField
      DisplayLabel = 'Qtd m'#237'nima'
      FieldName = 'QTMINIMA'
      Origin = 'QTMINIMA'
      Precision = 18
      Size = 2
    end
    object tbProdutosCDFORNECEDOR: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'CDFORNECEDOR'
      Origin = 'CDFORNECEDOR'
      Required = True
    end
  end
  object dsProdutos: TDataSource
    DataSet = tbProdutos
    Left = 288
    Top = 128
  end
  object qrConsulta: TFDQuery
    Connection = FDConnection1
    Left = 424
    Top = 72
  end
  object dsConsulta: TDataSource
    AutoEdit = False
    DataSet = qrConsulta
    Left = 424
    Top = 128
  end
  object FDTransaction1: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 256
    Top = 24
  end
  object tbVendas: TFDTable
    IndexFieldNames = 'NRVENDA'
    Connection = FDConnection1
    TableName = 'VENDAS'
    Left = 536
    Top = 72
    object tbVendasNRVENDA: TIntegerField
      DisplayLabel = 'Num. venda'
      FieldName = 'NRVENDA'
      Origin = 'NRVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbVendasDTVENDA: TDateField
      DisplayLabel = 'Data venda'
      FieldName = 'DTVENDA'
      Origin = 'DTVENDA'
      Required = True
    end
    object tbVendasCDCLIENTE: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'CDCLIENTE'
      Origin = 'CDCLIENTE'
      Required = True
    end
    object tbVendasCDVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'CDVENDEDOR'
      Origin = 'CDVENDEDOR'
      Required = True
    end
  end
  object tbItens: TFDTable
    Active = True
    OnCalcFields = tbItensCalcFields
    IndexFieldNames = 'NRVENDA;NRITEM'
    MasterSource = dsVendas
    MasterFields = 'NRVENDA'
    Connection = FDConnection1
    TableName = 'ITENS'
    Left = 600
    Top = 72
    object tbItensNRVENDA: TIntegerField
      FieldName = 'NRVENDA'
      Origin = 'NRVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbItensNRITEM: TIntegerField
      FieldName = 'NRITEM'
      Origin = 'NRITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbItensCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      Origin = 'CDPRODUTO'
      Required = True
    end
    object tbItensQTVENDA: TFMTBCDField
      FieldName = 'QTVENDA'
      Origin = 'QTVENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object tbItensVLPRODUTO: TFMTBCDField
      FieldName = 'VLPRODUTO'
      Origin = 'VLPRODUTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object tbItensDCPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'DCPRODUTO'
      LookupDataSet = tbProdutos
      LookupKeyFields = 'CDPRODUTO'
      LookupResultField = 'DCPRODUTO'
      KeyFields = 'CDPRODUTO'
      Size = 100
      Lookup = True
    end
    object tbItensTOTAL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
  end
  object dsVendas: TDataSource
    DataSet = tbVendas
    Left = 536
    Top = 128
  end
  object dsItens: TDataSource
    DataSet = tbItens
    Left = 600
    Top = 128
  end
  object tbVendedores: TFDTable
    IndexFieldNames = 'CDVENDEDOR'
    Connection = FDConnection1
    TableName = 'VENDEDORES'
    Left = 352
    Top = 72
    object tbVendedoresCDVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDVENDEDOR'
      Origin = 'CDVENDEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbVendedoresDCVENDEDOR: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'DCVENDEDOR'
      Origin = 'DCVENDEDOR'
      Size = 30
    end
  end
  object dsVendedores: TDataSource
    DataSet = tbVendedores
    Left = 352
    Top = 128
  end
end
