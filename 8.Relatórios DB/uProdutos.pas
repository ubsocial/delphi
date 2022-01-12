unit uProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB;

type
  TfrmProdutos = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    btnSair: TBitBtn;
    btnInserir: TBitBtn;
    btnEditar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnConfirmar: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
    Procedure TratarBotoes;
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

uses uClientes, uClientes2, uDM, uFirebird, uFornecedores;

procedure TfrmProdutos.btnCancelarClick(Sender: TObject);
begin
  dm.tbProdutos.Cancel;
  TratarBotoes;
end;

procedure TfrmProdutos.btnConfirmarClick(Sender: TObject);
begin
  if dm.tbProdutos.FieldByName('DCPRODUTO').AsString = '' then
  begin
    MessageDlg('Informe o nome!', mtWarning, [mbOk], 0);
    DBEdit2.SetFocus;
    Exit;
  end;
  dm.tbProdutos.Post;
  TratarBotoes;
end;

procedure TfrmProdutos.btnEditarClick(Sender: TObject);
begin
  TratarBotoes;
  dm.tbProdutos.Edit;
end;

procedure TfrmProdutos.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Excluir?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.tbProdutos.Delete;
  end;
end;

procedure TfrmProdutos.btnInserirClick(Sender: TObject);
var
  prox: Integer;
begin
  TratarBotoes;
  dm.tbProdutos.Last;
  prox := dm.tbProdutos.FieldByName('cdproduto').AsInteger + 1;
  dm.tbProdutos.Append;
  dm.tbProdutos.FieldByName('cdproduto').AsInteger := prox;
  DBEdit2.SetFocus;
end;

procedure TfrmProdutos.btnSairClick(Sender: TObject);
begin
  if dm.tbProdutos.State IN [dsInsert, dsEdit] then
  begin
    MessageDlg('Cancele ou confirme', mtWarning, [mbOk], 0);
    Exit;
  end;
  Close;
end;

procedure TfrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.tbProdutos.Close;
  dm.tbFornecedores.Close;
end;

procedure TfrmProdutos.FormShow(Sender: TObject);
begin
  dm.tbProdutos.Open;
  dm.tbFornecedores.Open;
end;

procedure TfrmProdutos.TratarBotoes;
begin
  btnInserir.Enabled := not btnInserir.Enabled;
  btnEditar.Enabled := not btnEditar.Enabled;
  btnExcluir.Enabled := not btnExcluir.Enabled;
  btnConfirmar.Enabled := not btnConfirmar.Enabled;
  btnCancelar.Enabled := not btnCancelar.Enabled;
  DBNavigator1.Enabled := not DBNavigator1.Enabled;
end;

end.
