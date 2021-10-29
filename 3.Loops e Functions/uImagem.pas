unit uImagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg;

type
  TfrmImagem = class(TForm)
    imgFoto: TImage;
    btnFechar: TButton;
    chkVisivel: TCheckBox;
    procedure btnFecharClick(Sender: TObject);
    procedure chkVisivelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImagem: TfrmImagem;

implementation

{$R *.dfm}

uses uCase, uCaseListbox, uFor, uForMemo, uFunctions, uRepeticoes;

procedure TfrmImagem.btnFecharClick(Sender: TObject);
begin
  frmImagem.Hide;
end;

procedure TfrmImagem.chkVisivelClick(Sender: TObject);
begin
  if not(chkVisivel.Checked) then
  begin
    imgFoto.Visible := False;
  end
  else
  begin
    imgFoto.Visible := True;
  end;
end;

end.
