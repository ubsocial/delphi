unit uClientes2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB;

type
  TfrmClientes2 = class(TForm)
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
    btnCancelar: TBitBtn;
    btnConfirmar: TBitBtn;
    btnExcluir: TBitBtn;
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
  frmClientes2: TfrmClientes2;

implementation

{$R *.dfm}

uses uClientes, uDM, uFirebird;

procedure TfrmClientes2.btnCancelarClick(Sender: TObject);
begin
  dm.tbClientes2.Cancel;
  TratarBotoes;
end;

procedure TfrmClientes2.btnConfirmarClick(Sender: TObject);
begin
  if dm.tbClientes2.FieldByName('DCCLIENTE').AsString = '' then
  begin
    MessageDlg('Informe o nome!', mtWarning, [mbOk], 0);
    DBEdit2.SetFocus;
    Exit;
  end;
  dm.tbClientes2.Post;
  TratarBotoes;
end;

procedure TfrmClientes2.btnEditarClick(Sender: TObject);
begin
  TratarBotoes;
  dm.tbClientes2.Edit;
end;

procedure TfrmClientes2.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Excluir?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.tbClientes2.Delete;
  end;
end;

procedure TfrmClientes2.btnInserirClick(Sender: TObject);
var
  prox: Integer;
begin
  TratarBotoes;
  dm.tbClientes2.Last;
  prox := dm.tbClientes2.FieldByName('cdcliente').AsInteger + 1;
  dm.tbClientes2.Append;
  dm.tbClientes2.FieldByName('cdcliente').AsInteger := prox;
  DBEdit2.SetFocus;
end;

procedure TfrmClientes2.btnSairClick(Sender: TObject);
begin
  if dm.tbClientes2.State IN [dsInsert, dsEdit] then
  begin
    MessageDlg('Cancele ou confirme', mtWarning, [mbOk], 0);
    Exit;
  end;
  Close;
end;

procedure TfrmClientes2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.tbClientes2.Close;
end;

procedure TfrmClientes2.FormShow(Sender: TObject);
begin
  dm.tbClientes2.Open;
end;

procedure TfrmClientes2.TratarBotoes;
begin
  btnInserir.Enabled := not btnInserir.Enabled;
  btnEditar.Enabled := not btnEditar.Enabled;
  btnExcluir.Enabled := not btnExcluir.Enabled;
  btnConfirmar.Enabled := not btnConfirmar.Enabled;
  btnCancelar.Enabled := not btnCancelar.Enabled;
  DBNavigator1.Enabled := not DBNavigator1.Enabled;
end;

end.
