program prjFirebirdFK;

uses
  Vcl.Forms,
  uFirebirdFK in 'uFirebirdFK.pas' {Form1},
  uDM in 'uDM.pas' {dm: TDataModule},
  uClientes in 'uClientes.pas' {frmClientes},
  uFornecedor in 'uFornecedor.pas' {frmFornecedores},
  uProduto in 'uProduto.pas' {frmProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.CreateForm(TfrmFornecedores, frmFornecedores);
  Application.CreateForm(TfrmProdutos, frmProdutos);
  Application.Run;
end.
