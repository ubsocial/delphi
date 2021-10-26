program prjAula1;

uses
  Vcl.Forms,
  uInicio in 'uInicio.pas' {frmInicio},
  uPagina2 in 'uPagina2.pas' {frmPagina2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmInicio, frmInicio);
  Application.CreateForm(TfrmPagina2, frmPagina2);
  Application.Run;
end.
