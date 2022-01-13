unit uVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TfrmVenda = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    btnSair: TBitBtn;
    btnInserir: TBitBtn;
    btnEditar: TBitBtn;
    btnExcluir: TBitBtn;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    Procedure TratarBotoes;
  public
    { Public declarations }
  end;

var
  frmVenda: TfrmVenda;

implementation

{$R *.dfm}

uses uClientes, uClientes2, uConsultas, uDM, uFirebird, uFornecedores,
  uProdutos, uRelatorio;

procedure TfrmVenda.btnCancelarClick(Sender: TObject);
begin
  dm.tbVendas.Cancel;
  TratarBotoes;
end;

procedure TfrmVenda.btnConfirmarClick(Sender: TObject);
begin
  if dm.tbVendas.FieldByName('DTVENDA').AsString = '' then
  begin
    MessageDlg('Informe a data!', mtWarning, [mbOk], 0);
    DBEdit2.SetFocus;
    Exit;
  end;
  dm.tbVendas.Post;
  TratarBotoes;
end;

procedure TfrmVenda.btnEditarClick(Sender: TObject);
begin
  TratarBotoes;
  dm.tbVendas.Edit;
end;

procedure TfrmVenda.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Excluir?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.tbVendas.Delete;
  end;
end;

procedure TfrmVenda.btnInserirClick(Sender: TObject);
var
  prox: Integer;
begin
  TratarBotoes;
  dm.tbVendas.Last;
  prox := dm.tbVendas.FieldByName('nrvenda').AsInteger + 1;
  dm.tbVendas.Append;
  dm.tbVendas.FieldByName('nrvenda').AsInteger := prox;
  DBEdit2.SetFocus;
end;

procedure TfrmVenda.btnSairClick(Sender: TObject);
begin
  if dm.tbVendas.State IN [dsInsert, dsEdit] then
  begin
    MessageDlg('Cancele ou confirme', mtWarning, [mbOk], 0);
    Exit;
  end;
  Close;
end;

procedure TfrmVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.tbVendas.Close;
  dm.tbClientes.Close;
  dm.tbVendedores.Close;
  dm.tbItens.Close;
end;

procedure TfrmVenda.FormShow(Sender: TObject);
begin
  dm.tbVendas.Open;
  dm.tbClientes.Open;
  dm.tbVendedores.Open;
  dm.tbItens.Open;
end;

procedure TfrmVenda.TratarBotoes;
begin
  btnInserir.Enabled := not btnInserir.Enabled;
  btnEditar.Enabled := not btnEditar.Enabled;
  btnExcluir.Enabled := not btnExcluir.Enabled;
  btnConfirmar.Enabled := not btnConfirmar.Enabled;
  btnCancelar.Enabled := not btnCancelar.Enabled;
  DBNavigator1.Enabled := not DBNavigator1.Enabled;
end;

end.
