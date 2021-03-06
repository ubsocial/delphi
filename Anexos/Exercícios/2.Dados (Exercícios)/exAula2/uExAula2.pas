unit uExAula2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math;

type
  TfrmExercicio1 = class(TForm)
    lblResultado: TLabel;
    edtVal1: TEdit;
    edtVal2: TEdit;
    btnSoma: TButton;
    btnSubtracao: TButton;
    btnMultiplicacao: TButton;
    btnDivisao: TButton;
    btnRaiz: TButton;
    btnQuadrado: TButton;
    btnCubo: TButton;
    btnAbsoluto: TButton;
    btnPotenciacao: TButton;
    btnProximo: TButton;
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubtracaoClick(Sender: TObject);
    procedure btnMultiplicacaoClick(Sender: TObject);
    procedure btnDivisaoClick(Sender: TObject);
    procedure btnRaizClick(Sender: TObject);
    procedure btnAbsolutoClick(Sender: TObject);
    procedure btnPotenciacaoClick(Sender: TObject);
    procedure btnQuadradoClick(Sender: TObject);
    procedure btnCuboClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExercicio1: TfrmExercicio1;
  erro: Extended;

implementation

{$R *.dfm}

uses uEx2Aula2;

procedure TfrmExercicio1.btnAbsolutoClick(Sender: TObject);
begin
  if (edtVal1.Text <> '') AND (TryStrToFloat(edtVal1.Text, erro)) then
  begin
    lblResultado.Caption := FloatToStr(Abs(StrToFloat(edtVal1.Text)));
    lblResultado.Visible := True;
    MessageDlg('Resultado: ' + lblResultado.Caption, mtConfirmation, [mbOk], 0);
    edtVal1.Clear;
    edtVal2.Clear;
  end
  else
  begin
    MessageDlg('Informe corretamente!', mtError, [mbOk], 0);
  end;
end;

procedure TfrmExercicio1.btnCuboClick(Sender: TObject);
begin
  if (edtVal1.Text <> '') AND (TryStrToFloat(edtVal1.Text, erro)) then
  begin
    lblResultado.Caption := FloatToStr(Power((StrToFloat(edtVal1.Text)), 3));
    lblResultado.Visible := True;
    MessageDlg('Resultado: ' + lblResultado.Caption, mtConfirmation, [mbOk], 0);
    edtVal1.Clear;
    edtVal2.Clear;
  end
  else
  begin
    MessageDlg('Informe corretamente!', mtError, [mbOk], 0);
  end;
end;

procedure TfrmExercicio1.btnDivisaoClick(Sender: TObject);
begin
  if (edtVal1.Text = '') OR (edtVal2.Text = '') then
  begin
    MessageDlg('Informe os valores!', mtError, [mbOk], 0);
  end
  else
  begin
    if (TryStrToFloat(edtVal1.Text, erro)) AND (TryStrToFloat(edtVal2.Text, erro)) then
    begin
      if StrToFloat(edtVal1.Text) = 0.0 then
      begin
        MessageDlg('N?o existe 0 para divis?o!', mtError, [mbOk], 0);
      end
      else
      begin
        if StrToFloat(edtVal2.Text) = 0.0 then
        begin
          lblResultado.Caption := '0';
          lblResultado.Visible := True;
          MessageDlg('Resultado: ' + lblResultado.Caption, mtConfirmation, [mbOk], 0);
          edtVal1.Clear;
          edtVal2.Clear;
        end
        else
        begin
          lblResultado.Caption := FloatToStr((StrToFloat(edtVal1.Text)) / (StrToFloat(edtVal2.Text)));
          lblResultado.Visible := True;
          MessageDlg('Resultado: ' + lblResultado.Caption, mtConfirmation, [mbOk], 0);
          edtVal1.Clear;
          edtVal2.Clear;
        end;
      end;
    end
    else
    begin
      MessageDlg('Informe n?meros!', mtError, [mbOk], 0);
    end;
  end;
end;

procedure TfrmExercicio1.btnMultiplicacaoClick(Sender: TObject);
begin
  if (edtVal1.Text = '') OR (edtVal2.Text = '') then
  begin
    MessageDlg('Informe os valores!', mtError, [mbOk], 0);
  end
  else
  begin
    if (TryStrToFloat(edtVal1.Text, erro)) AND (TryStrToFloat(edtVal2.Text, erro)) then
    begin
      lblResultado.Caption := FloatToStr((StrToFloat(edtVal1.Text)) * (StrToFloat(edtVal2.Text)));
      lblResultado.Visible := True;
      MessageDlg('Resultado: ' + lblResultado.Caption, mtConfirmation, [mbOk], 0);
      edtVal1.Clear;
      edtVal2.Clear;
    end
    else
    begin
      MessageDlg('Informe n?meros!', mtError, [mbOk], 0);
    end;
  end;
end;

procedure TfrmExercicio1.btnPotenciacaoClick(Sender: TObject);
begin
  if (edtVal1.Text = '') OR (edtVal2.Text = '') then
  begin
    MessageDlg('Informe os valores!', mtError, [mbOk], 0);
  end
  else
  begin
    if (TryStrToFloat(edtVal1.Text, erro)) AND (TryStrToFloat(edtVal2.Text, erro)) then
    begin
      lblResultado.Caption := FloatToStr(Power((StrToFloat(edtVal1.Text)), StrToFloat(edtVal2.Text)));
      lblResultado.Visible := True;
      MessageDlg('Resultado: ' + lblResultado.Caption, mtConfirmation, [mbOk], 0);
      edtVal1.Clear;
      edtVal2.Clear;
    end
    else
    begin
      MessageDlg('Informe n?meros!', mtError, [mbOk], 0);
    end;
  end;
end;

procedure TfrmExercicio1.btnProximoClick(Sender: TObject);
begin
  frmExercicio2.Show;
  frmExercicio1.Hide;
end;

procedure TfrmExercicio1.btnQuadradoClick(Sender: TObject);
begin
  if (edtVal1.Text <> '') AND (TryStrToFloat(edtVal1.Text, erro)) then
  begin
    lblResultado.Caption := FloatToStr(Sqr(StrToFloat(edtVal1.Text)));
    lblResultado.Visible := True;
    MessageDlg('Resultado: ' + lblResultado.Caption, mtConfirmation, [mbOk], 0);
    edtVal1.Clear;
    edtVal2.Clear;
  end
  else
  begin
    MessageDlg('Informe corretamente!', mtError, [mbOk], 0);
  end;
end;

procedure TfrmExercicio1.btnRaizClick(Sender: TObject);
begin
  if (edtVal1.Text <> '') AND (TryStrToFloat(edtVal1.Text, erro)) then
  begin
    lblResultado.Caption := FloatToStr(Sqrt(StrToFloat(edtVal1.Text)));
    lblResultado.Visible := True;
    MessageDlg('Resultado: ' + lblResultado.Caption, mtConfirmation, [mbOk], 0);
    edtVal1.Clear;
    edtVal2.Clear;
  end
  else
  begin
    MessageDlg('Informe corretamente!', mtError, [mbOk], 0);
  end;
end;

procedure TfrmExercicio1.btnSomaClick(Sender: TObject);
begin
  if (edtVal1.Text = '') OR (edtVal2.Text = '') then
  begin
    MessageDlg('Informe os valores!', mtError, [mbOk], 0);
  end
  else
  begin
    if (TryStrToFloat(edtVal1.Text, erro)) AND (TryStrToFloat(edtVal2.Text, erro)) then
    begin
      lblResultado.Caption := FloatToStr((StrToFloat(edtVal1.Text)) + (StrToFloat(edtVal2.Text)));
      lblResultado.Visible := True;
      MessageDlg('Resultado: ' + lblResultado.Caption, mtConfirmation, [mbOk], 0);
      edtVal1.Clear;
      edtVal2.Clear;
    end
    else
    begin
      MessageDlg('Informe n?meros!', mtError, [mbOk], 0);
    end;
  end;
end;

procedure TfrmExercicio1.btnSubtracaoClick(Sender: TObject);
begin
  if (edtVal1.Text = '') OR (edtVal2.Text = '') then
  begin
    MessageDlg('Informe os valores!', mtError, [mbOk], 0);
  end
  else
  begin
    if (TryStrToFloat(edtVal1.Text, erro)) AND (TryStrToFloat(edtVal2.Text, erro)) then
    begin
      lblResultado.Caption := FloatToStr((StrToFloat(edtVal1.Text)) - (StrToFloat(edtVal2.Text)));
      lblResultado.Visible := True;
      MessageDlg('Resultado: ' + lblResultado.Caption, mtConfirmation, [mbOk], 0);
      edtVal1.Clear;
      edtVal2.Clear;
    end
    else
    begin
      MessageDlg('Informe n?meros!', mtError, [mbOk], 0);
    end;
  end;
end;

end.
