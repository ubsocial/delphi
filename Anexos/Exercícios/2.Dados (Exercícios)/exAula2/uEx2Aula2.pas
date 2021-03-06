unit uEx2Aula2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExercicio2 = class(TForm)
    btnVermelho: TButton;
    btnAmarelo: TButton;
    btnVerde: TButton;
    lblResultado: TLabel;
    btnAnterior: TButton;
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnVermelhoClick(Sender: TObject);
    procedure btnAmareloClick(Sender: TObject);
    procedure btnVerdeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExercicio2: TfrmExercicio2;

implementation

{$R *.dfm}

uses uExAula2;

procedure TfrmExercicio2.btnAmareloClick(Sender: TObject);
begin
  lblResultado.Font.Name := 'Times';
  lblResultado.Font.Size := 12;
  lblResultado.Font.Color := clYellow;
end;

procedure TfrmExercicio2.btnAnteriorClick(Sender: TObject);
begin
  frmExercicio1.Show;
  frmExercicio2.Hide;
end;

procedure TfrmExercicio2.btnVerdeClick(Sender: TObject);
begin
  lblResultado.Font.Name := 'Consolas';
  lblResultado.Font.Size := 16;
  lblResultado.Font.Color := clGreen;
end;

procedure TfrmExercicio2.btnVermelhoClick(Sender: TObject);
begin
  lblResultado.Font.Name := 'Arial';
  lblResultado.Font.Size := 15;
  lblResultado.Font.Color := clRed;
end;

end.
