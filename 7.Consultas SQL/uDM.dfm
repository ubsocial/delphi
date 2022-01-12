object dm: Tdm
  OldCreateOrder = False
  Height = 206
  Width = 482
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Mateus Schwede\Desktop\ERP Delphi Firebird\DBL' +
        'OJA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    LoginPrompt = False
    Left = 168
    Top = 16
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
    IndexFieldNames = 'CDPRODUTO'
    Connection = FDConnection1
    TableName = 'PRODUTOS'
    Left = 312
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
    Left = 312
    Top = 128
  end
  object qrConsulta: TFDQuery
    Connection = FDConnection1
    Left = 408
    Top = 72
  end
  object dsConsulta: TDataSource
    AutoEdit = False
    DataSet = qrConsulta
    Left = 408
    Top = 128
  end
end
