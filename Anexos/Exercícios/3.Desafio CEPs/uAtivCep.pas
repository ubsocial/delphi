unit uAtivCep;
interface
uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;
type
  TAtivCepMateus = class(TForm)
    cmbUf: TComboBox;
    lblCep: TLabel;
    cmbCid: TComboBox;
    imgBandeira: TImage;
    lstRes: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure cmbUfChange(Sender: TObject);
    procedure cmbCidChange(Sender: TObject);
  private
  public
  end;
var AtivCepMateus: TAtivCepMateus; i: Integer;
implementation {$R *.dfm}

procedure TAtivCepMateus.cmbCidChange(Sender: TObject);
begin
  for i:=0 to lstRes.Items.Count-1 do
  begin
    if cmbCid.Items[cmbCid.ItemIndex]=lstRes.Items[i].Split([';'])[1] then lblCep.Caption := 'Cep: '+lstRes.Items[i].Split([';'])[3];
  end;
end;

procedure TAtivCepMateus.cmbUfChange(Sender: TObject);
begin
  imgBandeira.Picture.LoadFromFile('..\..\coisas\'+cmbUf.Items[cmbUf.ItemIndex]+'.png');
  cmbCid.Clear;
  for i:=0 to lstRes.Items.Count-1 do
  begin
      if cmbUf.Items[cmbUf.ItemIndex]=lstRes.Items[i].Split([';'])[4] then cmbCid.Items.Add(lstRes.Items[i].Split([';'])[1]);
  end;
end;

procedure TAtivCepMateus.FormCreate(Sender: TObject);
begin
  if FileExists('..\..\coisas\cidades.txt') then lstRes.Items.LoadFromFile('..\..\coisas\cidades.txt');
end;
end.
