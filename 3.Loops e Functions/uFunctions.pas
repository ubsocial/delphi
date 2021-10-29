unit uFunctions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmFunctions = class(TForm)
    edtValor: TEdit;
    btnVerificar: TButton;
    lblResposta: TLabel;
    btnAnteriorRepeticoes: TButton;
    procedure btnAnteriorRepeticoesClick(Sender: TObject);
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFunctions: TfrmFunctions;
  v: Integer;

implementation

{$R *.dfm}

uses uCase, uCaseListbox, uFor, uForMemo, uRepeticoes, uImagem;

// Functions globais aqui (Para toda Unit)
function parImpar(valor: Integer): String;
// Variáveis de function aqui
begin
  if (valor mod 2 = 0) then
  begin
    Result := 'Par';
  end
  else
  begin
    Result := 'Ímpar';
  end;
end;

procedure TfrmFunctions.btnAnteriorRepeticoesClick(Sender: TObject);
begin
  frmFunctions.Hide;
  frmRepeticoes.Show;
end;

procedure TfrmFunctions.btnVerificarClick(Sender: TObject);
// Functions locais aqui (Somente para procedure)
begin
  v := StrToInt(edtValor.Text);
  lblResposta.Caption := parImpar(v);
end;

end.
