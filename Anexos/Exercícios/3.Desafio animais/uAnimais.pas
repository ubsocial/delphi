unit uAnimais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  Tanimal = class(TForm)
    lblIntro: TLabel;
    imgLeao: TImage;
    imgCavalo: TImage;
    imgHomem: TImage;
    imgMacaco: TImage;
    imgMorcego: TImage;
    imgBaleia: TImage;
    imgAvestruz: TImage;
    imgPingum: TImage;
    imgPato: TImage;
    imgAguia: TImage;
    imgTartaruga: TImage;
    imgCrocodilo: TImage;
    imgCobra: TImage;
    btnComecar: TButton;
    rbtInicio: TRadioGroup;
    rbtReptil: TRadioGroup;
    rbtAve: TRadioGroup;
    rbtNaoVoa: TRadioGroup;
    btnReiniciar: TButton;
    rbtMamifero: TRadioGroup;
    rbtQuadrupede: TRadioGroup;
    rbtBipede: TRadioGroup;
    procedure btnComecarClick(Sender: TObject);
    procedure rbtInicioClick(Sender: TObject);
    procedure rbtReptilClick(Sender: TObject);
    procedure rbtAveClick(Sender: TObject);
    procedure rbtNaoVoaClick(Sender: TObject);
    procedure btnReiniciarClick(Sender: TObject);
    procedure rbtMamiferoClick(Sender: TObject);
    procedure rbtQuadrupedeClick(Sender: TObject);
    procedure rbtBipedeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  animal: Tanimal;

implementation

{$R *.dfm}

procedure Tanimal.btnComecarClick(Sender: TObject);
begin
  imgLeao.Visible := False;
  imgCavalo.Visible := False;
  imgHomem.Visible := False;
  imgMacaco.Visible := False;
  imgMorcego.Visible := False;
  imgBaleia.Visible := False;
  imgAvestruz.Visible := False;
  imgPingum.Visible := False;
  imgPato.Visible := False;
  imgAguia.Visible := False;
  imgTartaruga.Visible := False;
  imgCrocodilo.Visible := False;
  imgCobra.Visible := False;
  rbtInicio.Visible := True;
  btnComecar.Visible := False;
  lblIntro.Visible := False;
end;

procedure Tanimal.btnReiniciarClick(Sender: TObject);
begin
  btnReiniciar.Visible := False;
  imgLeao.Visible := True;
  imgCavalo.Visible := True;
  imgHomem.Visible := True;
  imgMacaco.Visible := True;
  imgMorcego.Visible := True;
  imgBaleia.Visible := True;
  imgAvestruz.Visible := True;
  imgPingum.Visible := True;
  imgPato.Visible := True;
  imgAguia.Visible := True;
  imgTartaruga.Visible := True;
  imgCrocodilo.Visible := True;
  imgCobra.Visible := True;
  rbtInicio.Visible := False;
  btnComecar.Visible := True;
  lblIntro.Visible := True;
  rbtInicio.Visible := False;
  rbtInicio.ItemIndex := -1;
  rbtReptil.Visible := False;
  rbtReptil.ItemIndex := -1;
  rbtAve.Visible := False;
  rbtAve.ItemIndex := -1;
  rbtNaoVoa.Visible := False;
  rbtNaoVoa.ItemIndex := -1;
  rbtMamifero.Visible := False;
  rbtMamifero.ItemIndex := -1;
  rbtQuadrupede.Visible := False;
  rbtQuadrupede.ItemIndex := -1;
  rbtBipede.Visible := False;
  rbtBipede.ItemIndex := -1;
end;

procedure Tanimal.rbtAveClick(Sender: TObject);
begin
  if(rbtAve.ItemIndex=0) then
  begin
    rbtNaoVoa.Visible := True;
    rbtAve.Visible := False;
  end;
  if(rbtAve.ItemIndex=1) then
  begin
    imgPato.Visible := True;
    rbtAve.Visible := False;
    btnReiniciar.Visible := True;
  end;
  if(rbtAve.ItemIndex=2) then
  begin
    imgAguia.Visible := True;
    rbtAve.Visible := False;
    btnReiniciar.Visible := True;
  end;
end;

procedure Tanimal.rbtBipedeClick(Sender: TObject);
begin
  if(rbtBipede.ItemIndex=0) then
  begin
    rbtBipede.Visible := False;
    imgHomem.Visible := True;
    btnReiniciar.Visible := True;
  end;
  if(rbtBipede.ItemIndex=1) then
  begin
    rbtBipede.Visible := False;
    imgMacaco.Visible := True;
    btnReiniciar.Visible := True;
  end;
end;

procedure Tanimal.rbtInicioClick(Sender: TObject);
begin
  if(rbtInicio.ItemIndex=2) then
  begin
    rbtReptil.Visible := True;
    rbtInicio.Visible := False;
  end;
  if(rbtInicio.ItemIndex=1) then
  begin
    rbtAve.Visible := True;
    rbtInicio.Visible := False;
  end;

  if(rbtInicio.ItemIndex=0) then
  begin
    rbtMamifero.Visible := True;
    rbtInicio.Visible := False;
  end;
  
end;

procedure Tanimal.rbtMamiferoClick(Sender: TObject);
begin
  if(rbtMamifero.ItemIndex=0) then
  begin
    rbtQuadrupede.Visible := True;
    rbtMamifero.Visible := False;
  end;
  if(rbtMamifero.ItemIndex=1) then
  begin
    rbtBipede.Visible := True;
    rbtMamifero.Visible := False;
  end;
  if(rbtMamifero.ItemIndex=2) then
  begin
    rbtMamifero.Visible := False;
    imgMorcego.Visible := True;
    btnReiniciar.Visible := True;
  end;
  if(rbtMamifero.ItemIndex=3) then
  begin
    rbtMamifero.Visible := False;
    imgBaleia.Visible := True;
    btnReiniciar.Visible := True;
  end;
end;

procedure Tanimal.rbtNaoVoaClick(Sender: TObject);
begin
  if(rbtNaoVoa.ItemIndex=0) then
  begin
    imgAvestruz.Visible := True;
    rbtNaoVoa.Visible := False;
    btnReiniciar.Visible := True;
  end;
  if(rbtNaoVoa.ItemIndex=1) then
  begin
    imgPingum.Visible := True;
    rbtNaoVoa.Visible := False;
    btnReiniciar.Visible := True;
  end;
end;

procedure Tanimal.rbtQuadrupedeClick(Sender: TObject);
begin
  if(rbtQuadrupede.ItemIndex=0) then
  begin
    imgLeao.Visible := True;
    rbtQuadrupede.Visible := False;
    btnReiniciar.Visible := True;
  end;
  if (rbtQuadrupede.ItemIndex=1) then
  begin
    imgCavalo.Visible := True;
    rbtQuadrupede.Visible := False;
    btnReiniciar.Visible := True;
  end;
end;

procedure Tanimal.rbtReptilClick(Sender: TObject);
begin
  if(rbtReptil.ItemIndex=0) then
  begin
    imgTartaruga.Visible := True;
    rbtReptil.Visible := False;
    btnReiniciar.Visible := True;
  end;
  if(rbtReptil.ItemIndex=1) then
  begin
    imgCrocodilo.Visible := True;
    rbtReptil.Visible := False;
    btnReiniciar.Visible := True;
  end;
  if(rbtReptil.ItemIndex=2) then
  begin
    imgCobra.Visible := True;
    rbtReptil.Visible := False;
    btnReiniciar.Visible := True;
  end;
end;

end.
