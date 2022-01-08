unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB;

type
  TfrmClientes = class(TForm)
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
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBNavigator1: TDBNavigator;
    btnSair: TBitBtn;
    btnInserir: TBitBtn;
    btnEditar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnConfirmar: TBitBtn;
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Procedure TratarBotoes;
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

uses uDM, uFirebirdFK, uFornecedor, uProduto;

{ TfrmClientes }

procedure TfrmClientes.btnCancelarClick(Sender: TObject);
begin
  dm.tbClientes.Cancel;
  TratarBotoes;
end;

procedure TfrmClientes.btnConfirmarClick(Sender: TObject);
begin
  if dm.tbClientes.FieldByName('DCCLIENTE').AsString = '' then
  begin
    MessageDlg('Informe o nome!', mtWarning, [mbOk], 0);
    DBEdit2.SetFocus;
    Exit;
  end;
  dm.tbClientes.Post;
  TratarBotoes;
end;

procedure TfrmClientes.btnEditarClick(Sender: TObject);
begin
  TratarBotoes;
  dm.tbClientes.Edit;
end;

procedure TfrmClientes.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Excluir?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.tbClientes.Delete;
  end;
end;

procedure TfrmClientes.btnInserirClick(Sender: TObject);
var
  prox: Integer;
begin
  TratarBotoes;
  dm.tbClientes.Last;
  prox := dm.tbClientes.FieldByName('cdcliente').AsInteger + 1;
  dm.tbClientes.Append;
  dm.tbClientes.FieldByName('cdcliente').AsInteger := prox;
  DBEdit2.SetFocus;
end;

procedure TfrmClientes.btnSairClick(Sender: TObject);
begin
  if dm.tbClientes.State IN [dsInsert, dsEdit] then
  begin
    MessageDlg('Cancele ou confirme', mtWarning, [mbOk], 0);
    Exit;
  end;
  Close;
end;

procedure TfrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.tbClientes.Close;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin
  dm.tbClientes.Open
end;

procedure TfrmClientes.TratarBotoes;
begin
  btnInserir.Enabled := not btnInserir.Enabled;
  btnEditar.Enabled := not btnEditar.Enabled;
  btnExcluir.Enabled := not btnExcluir.Enabled;
  btnConfirmar.Enabled := not btnConfirmar.Enabled;
  btnCancelar.Enabled := not btnCancelar.Enabled;
  DBNavigator1.Enabled := not DBNavigator1.Enabled;
end;

end.
