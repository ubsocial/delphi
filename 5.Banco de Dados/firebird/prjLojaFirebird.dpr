program prjLojaFirebird;

uses
  Vcl.Forms,
  uMenu in 'uMenu.pas' {frmMenu},
  uDM in 'uDM.pas' {dm: TDataModule},
  uClientesTeste in 'uClientesTeste.pas' {frmClientesTeste};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmClientesTeste, frmClientesTeste);
  Application.Run;
end.
