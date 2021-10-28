program prjExAula2;

uses
  Vcl.Forms,
  uExAula2 in 'uExAula2.pas' {frmExercicio1},
  uEx2Aula2 in 'uEx2Aula2.pas' {frmExercicio2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExercicio1, frmExercicio1);
  Application.CreateForm(TfrmExercicio2, frmExercicio2);
  Application.Run;
end.
