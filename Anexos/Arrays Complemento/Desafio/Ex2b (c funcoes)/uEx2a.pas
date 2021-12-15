unit uEx2a;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtVal: TEdit;
    lstRes2: TListBox;
    btnGerar: TButton;
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

  function parImpar(i: Integer): Boolean;
  begin
    if i mod 2=0 then
    begin
      Result := true;
    end
    else
    begin
      Result := false;
    end
  end;

  function addCalcPar(lista: TListBox; iNp: Integer; num: Integer; calcPar: Real): TListBox;
  begin
    lista.Items.Add(iNp.ToString+'(np) / '+num.ToString+'(n) = '+FloatToStr(calcPar));
  end;

  function addCalcImpar(lista: TListBox; iNp: Integer; num: Integer; calcImpar: Real): TListBox;
  begin
    lista.Items.Add(num.ToString+'(n) / '+iNp.ToString+'(np) = '+FloatToStr(calcImpar));
  end;

  function addSum(lista: TListBox ; total: Real): TListBox;
  begin
    lista.Items.Add('TOTAL = '+FloatToStr(total));
  end;

  function validaNp(qPar: Integer; qImpar: Integer): Boolean;
  begin
    if qPar=qImpar then
    begin
      Result := true;
    end
    else
    begin
      Result := false;
    end;
  end;

  
procedure TForm1.btnGerarClick(Sender: TObject);
var
  intervalo,i,qPar,np,qImpar,num,iNp,qNp: Integer;
  calcPar,calcImpar,total: Real;
begin
  intervalo := StrToInt(edtVal.Text);
  lstRes2.Clear;
  total := 0;
  iNp := 1;
  num := 1;
  qNp := 0;

  while qNp<intervalo do
  begin
    qPar := 0;
    qImpar := 0;
    for i := 1 to iNp do
    begin
      if iNp mod i=0 then
      begin
        if parImpar(i)=true then
        begin
          inc(qPar);
        end
        else
        begin
          inc(qImpar);
        end;
      end;
    end;
    if validaNp(qPar,qImpar)=true then
    begin
      inc(qNp);
      lstRes2.Items.Add(iNp.ToString);
      if num mod 2=0 then
      begin
        calcPar := iNp/num;
        addCalcPar(lstRes2,iNp,num,calcPar);
        inc(num);
        total := total+calcPar;
      end
      else
      begin
        calcImpar := num/iNp;
        addCalcImpar(lstRes2,iNp,num,calcImpar);
        inc(num);
        total := total+calcImpar;
      end;
    end;
    inc(iNp);
  end;
  addSum(lstRes2,total);
end;

end.
