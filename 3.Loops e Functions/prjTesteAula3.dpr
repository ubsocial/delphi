program prjTesteAula3;

uses
  Vcl.Forms,
  uCase in 'uCase.pas' {frmCase},
  uFor in 'uFor.pas' {frmFor},
  uForMemo in 'uForMemo.pas' {frmForMemo},
  uCaseListbox in 'uCaseListbox.pas' {frmCaseListbox},
  uRepeticoes in 'uRepeticoes.pas' {frmRepeticoes},
  uFunctions in 'uFunctions.pas' {frmFunctions},
  uImagem in 'uImagem.pas' {frmImagem};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCase, frmCase);
  Application.CreateForm(TfrmFor, frmFor);
  Application.CreateForm(TfrmForMemo, frmForMemo);
  Application.CreateForm(TfrmCaseListbox, frmCaseListbox);
  Application.CreateForm(TfrmRepeticoes, frmRepeticoes);
  Application.CreateForm(TfrmFunctions, frmFunctions);
  Application.CreateForm(TfrmImagem, frmImagem);
  Application.Run;
end.
