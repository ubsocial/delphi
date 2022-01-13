unit uVendedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB;

type
  TfrmVendedores = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    btnInserir: TBitBtn;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    procedure btnInserirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Procedure TratarBotoes;
  public
    { Public declarations }
  end;

var
  frmVendedores: TfrmVendedores;

implementation

{$R *.dfm}

uses uClientes, uClientes2, uConsultas, uDM, uFirebird, uFornecedores,
  uProdutos, uRelatorio, uVenda;

{ TfrmVendedores }

procedure TfrmVendedores.btnCancelarClick(Sender: TObject);
begin
  dm.tbVendedores.Cancel;
  TratarBotoes;
end;

procedure TfrmVendedores.btnConfirmarClick(Sender: TObject);
begin
  if dm.tbVendedores.FieldByName('DCVENDEDOR').AsString = '' then
  begin
    MessageDlg('Informe o nome!', mtWarning, [mbOk], 0);
    DBEdit2.SetFocus;
    Exit;
  end;
  dm.tbVendedores.Post;
  TratarBotoes;
end;

procedure TfrmVendedores.btnInserirClick(Sender: TObject);
var
  prox: Integer;
begin
  TratarBotoes;
  dm.tbVendedores.Last;
  prox := dm.tbVendedores.FieldByName('cdvendedor').AsInteger + 1;
  dm.tbVendedores.Append;
  dm.tbVendedores.FieldByName('cdvendedor').AsInteger := prox;
  DBEdit2.SetFocus;
end;

procedure TfrmVendedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.tbVendedores.Close;
end;

procedure TfrmVendedores.FormShow(Sender: TObject);
begin
  dm.tbVendedores.Open;
end;

procedure TfrmVendedores.TratarBotoes;
begin
  btnInserir.Enabled := not btnInserir.Enabled;
  btnConfirmar.Enabled := not btnConfirmar.Enabled;
  btnCancelar.Enabled := not btnCancelar.Enabled;
  DBNavigator1.Enabled := not DBNavigator1.Enabled;
end;

end.
