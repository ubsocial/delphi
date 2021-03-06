unit uCaseListbox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCaseListbox = class(TForm)
    lstCidade: TListBox;
    lblCidade: TLabel;
    Button1: TButton;
    edtCidade: TEdit;
    btnAdicionar: TButton;
    memCidades2: TMemo;
    btnCarregarCidades: TButton;
    cmbCidades2: TComboBox;
    btnRemoverCidade: TButton;
    btnProximoRepeticoes: TButton;
    procedure Button1Click(Sender: TObject);
    procedure lstCidadeClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnCarregarCidadesClick(Sender: TObject);
    procedure btnRemoverCidadeClick(Sender: TObject);
    procedure btnProximoRepeticoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCaseListbox: TfrmCaseListbox;

implementation

{$R *.dfm}

uses uCase, uFor, uForMemo, uRepeticoes, uFunctions, uImagem;

procedure TfrmCaseListbox.btnAdicionarClick(Sender: TObject);
begin
  if not(edtCidade.Text = '') then
  begin
    lstCidade.Items.Add(edtCidade.Text);
    memCidades2.Lines.Add(edtCidade.Text);
    cmbCidades2.Items.Add(edtCidade.Text);
  end;
end;

procedure TfrmCaseListbox.btnCarregarCidadesClick(Sender: TObject);
begin
  memCidades2.Clear;
  cmbCidades2.Clear;
  lstCidade.Items.LoadFromFile('C:\Users\Mateus Schwede\Desktop\cidades.txt');
  cmbCidades2.Items.LoadFromFile('C:\Users\Mateus Schwede\Desktop\cidades.txt');
  memCidades2.Lines.LoadFromFile('C:\Users\Mateus Schwede\Desktop\cidades.txt');
end;

procedure TfrmCaseListbox.btnProximoRepeticoesClick(Sender: TObject);
begin
  frmCaseListbox.Hide;
  frmRepeticoes.Show;
end;

procedure TfrmCaseListbox.btnRemoverCidadeClick(Sender: TObject);
begin
  if (MessageDlg('Remover?', mtWarning, [mbYes, mbNo], 0) = mrYes) then
  begin
    lstCidade.Items.Delete(lstCidade.ItemIndex);
    cmbCidades2.Items.Delete(cmbCidades2.ItemIndex);
  end;
end;

procedure TfrmCaseListbox.Button1Click(Sender: TObject);
begin
  frmCaseListbox.Hide;
  frmForMemo.Show;
end;

procedure TfrmCaseListbox.lstCidadeClick(Sender: TObject);
begin
  case lstCidade.ItemIndex of
    0: lblCidade.Caption := 'DF: '+ lstCidade.Items[(lstCidade.ItemIndex)];
    1: lblCidade.Caption := 'RN: '+ lstCidade.Items[(lstCidade.ItemIndex)];
    2: lblCidade.Caption := 'RS: '+ lstCidade.Items[(lstCidade.ItemIndex)];
  end;
end;

end.
