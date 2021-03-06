unit uRepeticoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmRepeticoes = class(TForm)
    btnWhileDo: TButton;
    btnRepeatUntil: TButton;
    edtIntervalo: TEdit;
    memResposta: TMemo;
    btnAnteriorCaseListbox: TButton;
    btnProximoFunctions: TButton;
    procedure btnAnteriorCaseListboxClick(Sender: TObject);
    procedure btnWhileDoClick(Sender: TObject);
    procedure btnRepeatUntilClick(Sender: TObject);
    procedure btnProximoFunctionsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepeticoes: TfrmRepeticoes;
  valor: Integer;

implementation

{$R *.dfm}

uses uCase, uCaseListbox, uFor, uForMemo, uFunctions, uImagem;

procedure TfrmRepeticoes.btnAnteriorCaseListboxClick(Sender: TObject);
begin
  frmRepeticoes.Hide;
  frmCaseListbox.Show;
end;

procedure TfrmRepeticoes.btnProximoFunctionsClick(Sender: TObject);
begin
  frmRepeticoes.Hide;
  frmFunctions.Show;
end;

procedure TfrmRepeticoes.btnRepeatUntilClick(Sender: TObject);
begin
  valor := StrToInt(edtIntervalo.Text);
  memResposta.Clear;

  // Repeat Until 1? faz, depois verifica
  repeat
    memResposta.Lines.Add(valor.ToString);
    inc(valor);
  until (valor > 10);
end;

procedure TfrmRepeticoes.btnWhileDoClick(Sender: TObject);
begin
  valor := StrToInt(edtIntervalo.Text);
  memResposta.Clear;

  // While Do 1? verifica, depois executa
  while valor < 10 do
  begin
    memResposta.Lines.Add(valor.ToString);
    inc(valor);
  end;
end;

end.
