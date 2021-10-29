unit uFor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmFor = class(TForm)
    edtValor: TEdit;
    btnGerar: TButton;
    lblResultado: TLabel;
    btnAnteriorCase: TButton;
    btnProximoForMemo: TButton;
    procedure btnGerarClick(Sender: TObject);
    procedure btnAnteriorCaseClick(Sender: TObject);
    procedure btnProximoForMemoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFor: TfrmFor;

implementation

{$R *.dfm}

uses uCase, uForMemo, uCaseListbox, uRepeticoes, uFunctions, uImagem;

procedure TfrmFor.btnAnteriorCaseClick(Sender: TObject);
begin
  frmFor.Hide;
  frmCase.Show;
end;

procedure TfrmFor.btnGerarClick(Sender: TObject);
var
  I, x: Integer;
begin
  x := 0;
  // for I := 10 downto 1 do
  for I := 0 to StrToInt(edtValor.Text) do
  begin
    lblResultado.Caption := lblResultado.Caption + ' ' + IntToStr(x);
    inc(x); // O mesmo que x := x+1;
  end;
end;

procedure TfrmFor.btnProximoForMemoClick(Sender: TObject);
begin
  frmFor.Hide;
  frmForMemo.Show;
end;

end.
