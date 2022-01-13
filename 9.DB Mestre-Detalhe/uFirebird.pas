unit uFirebird;

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
    optClientes2: TMenuItem;
    optFornecedores: TMenuItem;
    optProdutos: TMenuItem;
    Consutas1: TMenuItem;
    optConsultas: TMenuItem;
    Relatrios1: TMenuItem;
    optRelProdutos: TMenuItem;
    optVendas: TMenuItem;
    optVendedores: TMenuItem;
    procedure optClientesClick(Sender: TObject);
    procedure optClientes2Click(Sender: TObject);
    procedure optFornecedoresClick(Sender: TObject);
    procedure optProdutosClick(Sender: TObject);
    procedure optConsultasClick(Sender: TObject);
    procedure optRelProdutosClick(Sender: TObject);
    procedure optVendasClick(Sender: TObject);
    procedure optVendedoresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uClientes, uDM, uClientes2, uFornecedores, uProdutos, uConsultas,
  uRelatorio, uVenda, uVendedores;

procedure TForm1.optClientes2Click(Sender: TObject);
begin
  frmClientes2.Show;
end;

procedure TForm1.optClientesClick(Sender: TObject);
begin
  frmClientes.Show;
end;

procedure TForm1.optConsultasClick(Sender: TObject);
begin
  frmConsultas.Show;
end;

procedure TForm1.optFornecedoresClick(Sender: TObject);
begin
  frmFornecedores.Show;
end;

procedure TForm1.optProdutosClick(Sender: TObject);
begin
  frmProdutos.Show;
end;

procedure TForm1.optRelProdutosClick(Sender: TObject);
begin
  frmRelatorio.rltRel.Preview;
end;

procedure TForm1.optVendasClick(Sender: TObject);
begin
  frmVenda.Show;
end;

procedure TForm1.optVendedoresClick(Sender: TObject);
begin
  frmVendedores.Show;
end;

end.
