unit uFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, Data.DB;

type
  TfrmFornecedores = class(TForm)
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
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnInserirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    Procedure TratarBotoes;
  public
    { Public declarations }
  end;

var
  frmFornecedores: TfrmFornecedores;

implementation

{$R *.dfm}

uses uClientes, uClientes2, uDM, uFirebird;

procedure TfrmFornecedores.btnConfirmarClick(Sender: TObject);
begin
  if dm.tbFornecedores.FieldByName('DCFORNECEDOR').AsString = '' then
  begin
    MessageDlg('Informe o nome!', mtWarning, [mbOk], 0);
    DBEdit2.SetFocus;
    Exit;
  end;
  dm.tbFornecedores.Post;
  TratarBotoes;
end;

procedure TfrmFornecedores.btnInserirClick(Sender: TObject);
var
  prox: Integer;
begin
  TratarBotoes;
  dm.tbFornecedores.Last;
  prox := dm.tbFornecedores.FieldByName('cdfornecedor').AsInteger + 1;
  dm.tbFornecedores.Append;
  dm.tbFornecedores.FieldByName('cdfornecedor').AsInteger := prox;
  DBEdit2.SetFocus;
end;

procedure TfrmFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.tbFornecedores.Close;
end;

procedure TfrmFornecedores.FormShow(Sender: TObject);
begin
  dm.tbFornecedores.Open;
end;

procedure TfrmFornecedores.TratarBotoes;
begin
  btnInserir.Enabled := not btnInserir.Enabled;
  btnEditar.Enabled := not btnEditar.Enabled;
  btnExcluir.Enabled := not btnExcluir.Enabled;
  btnConfirmar.Enabled := not btnConfirmar.Enabled;
  btnCancelar.Enabled := not btnCancelar.Enabled;
  DBNavigator1.Enabled := not DBNavigator1.Enabled;
end;

end.
