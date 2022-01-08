unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tdm = class(TDataModule)
    conexao: TFDConnection;
    tbClientes: TFDTable;
    dsClientes: TDataSource;
    tbFornecedores: TFDTable;
    tbItens: TFDTable;
    tbProdutos: TFDTable;
    tbVendas: TFDTable;
    tbVendedores: TFDTable;
    dsItens: TDataSource;
    dsFornecedores: TDataSource;
    dsProdutos: TDataSource;
    dsVendas: TDataSource;
    dsVendedores: TDataSource;
    tbClientesCDCLIENTE: TIntegerField;
    tbClientesDCCLIENTE: TStringField;
    tbClientesENDERECO: TStringField;
    tbClientesBAIRRO: TStringField;
    tbClientesCIDADE: TStringField;
    tbClientesTELEFONE: TStringField;
    tbClientesCEP: TStringField;
    tbFornecedoresCDFORNECEDOR: TIntegerField;
    tbFornecedoresDCFORNECEDOR: TStringField;
    tbFornecedoresENDERECO: TStringField;
    tbFornecedoresBAIRRO: TStringField;
    tbFornecedoresCIDADE: TStringField;
    tbFornecedoresTELEFONE: TStringField;
    tbFornecedoresCEP: TStringField;
    tbProdutosCDPRODUTO: TIntegerField;
    tbProdutosDCPRODUTO: TStringField;
    tbProdutosVLPRODUTO: TFMTBCDField;
    tbProdutosQTESTOQUE: TFMTBCDField;
    tbProdutosQTMINIMA: TFMTBCDField;
    tbProdutosCDFORNECEDOR: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uClientes, uFirebirdFK, uFornecedor, uProduto;

{$R *.dfm}

end.
