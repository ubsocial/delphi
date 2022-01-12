unit uConsultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TfrmConsultas = class(TForm)
    cmbTabela: TComboBox;
    rgpSelecionar: TRadioGroup;
    rgpOrdenar: TRadioGroup;
    edtConsultar: TEdit;
    btnPesquisar: TBitBtn;
    DBGrid1: TDBGrid;
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultas: TfrmConsultas;

implementation

{$R *.dfm}

uses uClientes, uClientes2, uDM, uFirebird, uFornecedores, uProdutos;

procedure TfrmConsultas.btnPesquisarClick(Sender: TObject);
var
  nmTab, vSQL: string;

  function RetCampoCodigo(aTab: String): String;
  begin
    if aTab = 'CLIENTES' then
      Result := 'CDCLIENTE'
    else if aTab = 'FORNECEDORES' then
      Result := 'CDFORNECEDOR'
    else if aTab = 'PRODUTOS' then
      Result := 'CDPRODUTO'
  end;
  function RetCampoDesc(aTab: String): String;
  begin
    if aTab = 'CLIENTES' then
      Result := 'DCCLIENTE'
    else if aTab = 'FORNECEDORES' then
      Result := 'DCFORNECEDOR'
    else if aTab = 'PRODUTOS' then
      Result := 'DCPRODUTO'
  end;

begin
  nmTab := '';

  if cmbTabela.ItemIndex = -1 then
  begin
    MessageDlg('Selecione uma tabela', mtError, [mbOk], 0);
    Exit;
  end;

  if edtConsultar.Text = '' then
  begin
    MessageDlg('Digite algum valor', mtWarning, [mbOk], 0);
    Exit;
  end;

  case cmbTabela.ItemIndex of
    0:
      nmTab := 'CLIENTES';
    1:
      nmTab := 'FORNECEDORES';
    2:
      nmTab := 'PRODUTOS';
  end;

  vSQL := 'SELECT * FROM ' + nmTab;

  case rgpSelecionar.ItemIndex of
    0:
      vSQL := vSQL + ' WHERE ' + RetCampoCodigo(nmTab) + ' = :PCD';
    1:
      vSQL := vSQL + ' WHERE ' + RetCampoDesc(nmTab) + ' CONTAINING :PCD';
  end;
  case rgpOrdenar.ItemIndex of
    0:
      vSQL := vSQL + ' ORDER BY ' + RetCampoCodigo(nmTab);
    1:
      vSQL := vSQL + ' ORDER BY ' + RetCampoCodigo(nmTab) + ' DESC ';
  end;

  dm.qrConsulta.Close;
  dm.qrConsulta.SQL.Text := vSQL;
  dm.qrConsulta.ParamByName('PCD').AsString := edtConsultar.Text;
  dm.qrConsulta.Open;
  if dm.qrConsulta.IsEmpty then
    MessageDlg('Nada encontrado', mtInformation, [mbOk], 0);

end;

end.
