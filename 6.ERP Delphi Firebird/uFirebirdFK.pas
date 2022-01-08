unit uFirebirdFK;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    abelas1: TMenuItem;
    optClientes: TMenuItem;
    optFornecedores: TMenuItem;
    optItens: TMenuItem;
    optProdutos: TMenuItem;
    optVendas: TMenuItem;
    optVendedores: TMenuItem;
    procedure optFornecedoresClick(Sender: TObject);
    procedure optClientesClick(Sender: TObject);
    procedure optProdutosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uClientes, uDM, uFornecedor, uProduto;

procedure TForm1.optClientesClick(Sender: TObject);
begin
  frmClientes.Show;
end;

procedure TForm1.optFornecedoresClick(Sender: TObject);
begin
  frmFornecedores.Show;
end;

procedure TForm1.optProdutosClick(Sender: TObject);
begin
  frmProdutos.Show;
end;

end.
