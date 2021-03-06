unit uCase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCase = class(TForm)
    edtValor: TEdit;
    btnVerificar: TButton;
    lblResposta: TLabel;
    btnProximoFor: TButton;
    btnImagem: TButton;
    procedure btnVerificarClick(Sender: TObject);
    procedure btnProximoForClick(Sender: TObject);
    procedure btnImagemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCase: TfrmCase;

implementation

{$R *.dfm}

uses uFor, uForMemo, uCaseListbox, uRepeticoes, uFunctions, uImagem;

procedure TfrmCase.btnImagemClick(Sender: TObject);
begin
  frmImagem.Show;
end;

procedure TfrmCase.btnProximoForClick(Sender: TObject);
begin
  frmCase.Hide;
  frmFor.Show;
end;

procedure TfrmCase.btnVerificarClick(Sender: TObject);
var
  x: Integer;
begin
  x := StrToInt(edtValor.Text);
  case x of
    1: lblResposta.Caption := 'Valor 1';
    2: lblResposta.Caption := 'Valor 2';
    3: lblResposta.Caption := 'Valor 3';
  end;
end;

end.
