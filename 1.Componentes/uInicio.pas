unit uInicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.CheckLst;

type
  TfrmInicio = class(TForm)
    lblTexto: TLabel;
    btnClique: TButton;
    edtTexto: TEdit;
    memTexto: TMemo;
    rgpSelecione: TRadioGroup;
    lblSelecionada: TLabel;
    clbSelecione: TCheckListBox;
    lblAltSelecionada: TLabel;
    lblChecado: TLabel;
    cbxChecado: TCheckBox;
    lstAlternativas: TListBox;
    lblClicada: TLabel;
    cmbSelecione: TComboBox;
    lblComboSelecionada: TLabel;
    btnMensagem: TButton;
    btnProximo: TButton;
    procedure btnCliqueClick(Sender: TObject);
    procedure rgpSelecioneClick(Sender: TObject);
    procedure clbSelecioneClick(Sender: TObject);
    procedure cbxChecadoClick(Sender: TObject);
    procedure lstAlternativasClick(Sender: TObject);
    procedure cmbSelecioneChange(Sender: TObject);
    procedure btnMensagemClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInicio: TfrmInicio;

implementation

{$R *.dfm}

uses uPagina2;

procedure TfrmInicio.btnCliqueClick(Sender: TObject);
begin
  lblTexto.Caption := '';
  memTexto.Lines.Add(edtTexto.Text);
  memTexto.Text := LowerCase(memTexto.Text);
end;

procedure TfrmInicio.btnMensagemClick(Sender: TObject);
begin
  // ShowMessage('Ol?');
  MessageDlg('Informa??o', mtCustom, [mbCancel, mbOk], 0);

end;

procedure TfrmInicio.btnProximoClick(Sender: TObject);
begin
  frmInicio.Hide;
  frmPagina2.Show;
end;

procedure TfrmInicio.cbxChecadoClick(Sender: TObject);
begin
  if cbxChecado.Checked then
  begin
    lblChecado.Caption := cbxChecado.Caption;
  end
  else
  begin
    lblChecado.Caption := 'N?o checado!';
  end;
end;

procedure TfrmInicio.clbSelecioneClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to Pred(clbSelecione.Items.Count) do
  begin
    if clbSelecione.Checked[I] then
    begin
      lblAltSelecionada.Caption := clbSelecione.Items.Strings[I];
    end;
  end;
end;

procedure TfrmInicio.cmbSelecioneChange(Sender: TObject);
begin
  lblComboSelecionada.Caption := cmbSelecione.Items[(cmbSelecione.ItemIndex)];
end;

procedure TfrmInicio.lstAlternativasClick(Sender: TObject);
begin
  // lblClicada.Caption := lstAlternativas.Items[(lstAlternativas.ItemIndex)];
  lblClicada.Caption := lstAlternativas.ItemIndex.ToString;
end;

procedure TfrmInicio.rgpSelecioneClick(Sender: TObject);
begin
  lblSelecionada.Caption := rgpSelecione.Items[rgpSelecione.ItemIndex];
end;

end.
