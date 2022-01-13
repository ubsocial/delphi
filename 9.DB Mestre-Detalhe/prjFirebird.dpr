program prjFirebird;

uses
  Vcl.Forms,
  uFirebird in 'uFirebird.pas' {Form1},
  uDM in 'uDM.pas' {dm: TDataModule},
  uClientes in 'uClientes.pas' {frmClientes},
  uClientes2 in 'uClientes2.pas' {frmClientes2},
  uFornecedores in 'uFornecedores.pas' {frmFornecedores},
  uProdutos in 'uProdutos.pas' {frmProdutos},
  uConsultas in 'uConsultas.pas' {frmConsultas},
  uRelatorio in 'uRelatorio.pas' {frmRelatorio},
  uVenda in 'uVenda.pas' {frmVenda},
  uVendedores in 'uVendedores.pas' {frmVendedores};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.CreateForm(TfrmClientes2, frmClientes2);
  Application.CreateForm(TfrmFornecedores, frmFornecedores);
  Application.CreateForm(TfrmProdutos, frmProdutos);
  Application.CreateForm(TfrmConsultas, frmConsultas);
  Application.CreateForm(TfrmRelatorio, frmRelatorio);
  Application.CreateForm(TfrmVenda, frmVenda);
  Application.CreateForm(TfrmVendedores, frmVendedores);
  Application.Run;
end.
