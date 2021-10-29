unit uForMemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmForMemo = class(TForm)
    btnAnteriorFor: TButton;
    edtValor: TEdit;
    btnGerar: TButton;
    memResultado: TMemo;
    btnProximoListbox: TButton;
    procedure btnGerarClick(Sender: TObject);
    procedure btnAnteriorForClick(Sender: TObject);
    procedure btnProximoListboxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmForMemo: TfrmForMemo;

implementation

{$R *.dfm}

uses uCase, uFor, uCaseListbox, uRepeticoes, uFunctions, uImagem;

procedure TfrmForMemo.btnAnteriorForClick(Sender: TObject);
begin
  frmForMemo.Hide;
  frmFor.Show;
end;

procedure TfrmForMemo.btnGerarClick(Sender: TObject);
var
  I: Integer;
begin
  memResultado.Clear;
  for I := 0 to 10 do
  begin
    memResultado.Lines.Add(IntToStr(StrToInt(edtValor.Text) * I));
  end;

  { Funções Memo:
    mem.Lines[2]; //Acessa linha índice 2
    mem.Lines[2] = 'Ola'; //Compara se linha índice 2 tem conteúdo 'Ola'
    mem.Lines.Count; //Conta quantidade de linhas que o Memo possui
    mem.Exchange(0,1); //Troca linha 0 com a linha 1
    mem.Lines.Move(1,5); //Move linha 1 para posição 5
    mem.Lines.Insert(2,'ola'); //Insere linha 'ola' com índice 2

    k:=memEx.Lines.Count; //Usando função delete para remover linhas do Memo com For
    For i:=k-1 Downto 1 Do
      if (i mod 2) <>0 then
        mem.Lines.Delete(i);
  }
end;

procedure TfrmForMemo.btnProximoListboxClick(Sender: TObject);
begin
  frmForMemo.Hide;
  frmCaseListbox.Show;
end;

end.
