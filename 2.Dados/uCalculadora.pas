unit uCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math;

type
  m = Integer;

  TfrmCalculadora = class(TForm)
    edtVal1: TEdit;
    edtVal2: TEdit;
    lblResultado: TLabel;
    btnSoma: TButton;
    btnRaiz: TButton;
    btnPot: TButton;
    btnCondicao: TButton;
    procedure btnSomaClick(Sender: TObject);
    procedure btnRaizClick(Sender: TObject);
    procedure btnPotClick(Sender: TObject);
    procedure btnCondicaoClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

const
  pi = 3.14;

var
  frmCalculadora: TfrmCalculadora;
  comprimento: m;

implementation

{$R *.dfm}

procedure TfrmCalculadora.btnCondicaoClick(Sender: TObject);
var
  valor: Double;
begin
  valor := StrToFloat(edtVal1.Text);

  if valor >= 0 then
  begin
    if valor = 0 then
    begin
      lblResultado.Caption := 'Igual a zero';
    end
    else
    begin
      lblResultado.Caption := 'Maior que zero';
    end;
  end
  else
  begin
    lblResultado.Caption := 'Menor que 0';
  end;

end;

procedure TfrmCalculadora.btnPotClick(Sender: TObject);
var
  res: Double;
begin
  res := Power(StrToFloat(edtVal1.Text), 3);
  lblResultado.Caption := FloatToStr(res);
end;

procedure TfrmCalculadora.btnRaizClick(Sender: TObject);
begin
  lblResultado.Caption := FloatToStr(SQRT(StrToInt((edtVal1.Text))));
end;

procedure TfrmCalculadora.btnSomaClick(Sender: TObject);
begin
  lblResultado.Caption := FloatToStr(StrToFloat(edtVal1.Text) +
    StrToFloat(edtVal2.Text));
end;

end.
