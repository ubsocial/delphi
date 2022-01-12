unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  Tdm = class(TDataModule)
    FDConnection1: TFDConnection;
    tbClientes: TFDTable;
    tbClientesCDCLIENTE: TIntegerField;
    tbClientesDCCLIENTE: TStringField;
    tbClientesENDERECO: TStringField;
    tbClientesBAIRRO: TStringField;
    tbClientesCIDADE: TStringField;
    tbClientesTELEFONE: TStringField;
    tbClientesCEP: TStringField;
    dsClientes: TDataSource;
    tbClientes2: TFDTable;
    dsClientes2: TDataSource;
    tbClientes2CDCLIENTE: TIntegerField;
    tbClientes2DCCLIENTE: TStringField;
    tbClientes2ENDERECO: TStringField;
    tbClientes2BAIRRO: TStringField;
    tbClientes2CIDADE: TStringField;
    tbClientes2TELEFONE: TStringField;
    tbClientes2CEP: TStringField;
    tbFornecedores: TFDTable;
    dsFornecedores: TDataSource;
    tbFornecedoresCDFORNECEDOR: TIntegerField;
    tbFornecedoresDCFORNECEDOR: TStringField;
    tbFornecedoresENDERECO: TStringField;
    tbFornecedoresBAIRRO: TStringField;
    tbFornecedoresCIDADE: TStringField;
    tbFornecedoresTELEFONE: TStringField;
    tbFornecedoresCEP: TStringField;
    tbProdutos: TFDTable;
    dsProdutos: TDataSource;
    tbProdutosCDPRODUTO: TIntegerField;
    tbProdutosDCPRODUTO: TStringField;
    tbProdutosVLPRODUTO: TFMTBCDField;
    tbProdutosQTESTOQUE: TFMTBCDField;
    tbProdutosQTMINIMA: TFMTBCDField;
    tbProdutosCDFORNECEDOR: TIntegerField;
    qrConsulta: TFDQuery;
    dsConsulta: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uClientes, uFirebird, uClientes2, uFornecedores, uProdutos, uConsultas;

{$R *.dfm}

end.
