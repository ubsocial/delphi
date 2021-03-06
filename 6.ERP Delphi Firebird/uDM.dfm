object dm: Tdm
  OldCreateOrder = False
  Height = 199
  Width = 441
  object conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Mateus Schwede\Documents\delphi\6.ERP Delphi F' +
        'irebird\DBLOJA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 208
    Top = 24
  end
  object tbClientes: TFDTable
    IndexFieldNames = 'CDCLIENTE'
    Connection = conexao
    TableName = 'CLIENTES'
    Left = 32
    Top = 80
    object tbClientesCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDCLIENTE'
      Origin = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbClientesDCCLIENTE: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'DCCLIENTE'
      Origin = 'DCCLIENTE'
      Size = 30
    end
    object tbClientesENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object tbClientesBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
    end
    object tbClientesCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
    object tbClientesTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '!\(99\)00000-0000;0;_'
      Size = 10
    end
    object tbClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 8
    end
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = tbClientes
    Left = 32
    Top = 136
  end
  object tbFornecedores: TFDTable
    IndexFieldNames = 'CDFORNECEDOR'
    Connection = conexao
    TableName = 'FORNECEDORES'
    Left = 104
    Top = 80
    object tbFornecedoresCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      Origin = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbFornecedoresDCFORNECEDOR: TStringField
      FieldName = 'DCFORNECEDOR'
      Origin = 'DCFORNECEDOR'
      Size = 30
    end
    object tbFornecedoresENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object tbFornecedoresBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
    end
    object tbFornecedoresCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
    object tbFornecedoresTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 10
    end
    object tbFornecedoresCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 8
    end
  end
  object tbItens: TFDTable
    Connection = conexao
    TableName = 'ITENS'
    Left = 176
    Top = 80
  end
  object tbProdutos: TFDTable
    IndexFieldNames = 'CDPRODUTO'
    Connection = conexao
    TableName = 'PRODUTOS'
    Left = 232
    Top = 80
    object tbProdutosCDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDPRODUTO'
      Origin = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbProdutosDCPRODUTO: TStringField
      DisplayLabel = 'Nome'
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
      DisplayLabel = 'Quantidade min'
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
  object tbVendas: TFDTable
    Connection = conexao
    TableName = 'VENDAS'
    Left = 296
    Top = 80
  end
  object tbVendedores: TFDTable
    Connection = conexao
    TableName = 'VENDEDORES'
    Left = 360
    Top = 80
  end
  object dsItens: TDataSource
    DataSet = tbItens
    Left = 176
    Top = 136
  end
  object dsFornecedores: TDataSource
    AutoEdit = False
    DataSet = tbFornecedores
    Left = 104
    Top = 136
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = tbProdutos
    Left = 232
    Top = 136
  end
  object dsVendas: TDataSource
    DataSet = tbVendas
    Left = 296
    Top = 136
  end
  object dsVendedores: TDataSource
    DataSet = tbVendedores
    Left = 360
    Top = 136
  end
end
