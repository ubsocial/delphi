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
        if i mod 2=0 then
        begin              
          inc(qPar);
        end
        else
        begin
          inc(qImpar);
        end;
      end
    end;
    if qPar=qImpar then 
    begin
      inc(qNp);
      lstRes2.Items.Add(iNp.ToString);
      if num mod 2=0 then
      begin
        calcPar := iNp/num;
        lstRes2.Items.Add(iNp.ToString+'(np) / '+num.ToString+'(num) = '+FloatToStr(calcPar));
        inc(num);
        total := total+calcPar;
      end
      else
      begin
        calcImpar := num/iNp;
        lstRes2.Items.Add(num.ToString+'(num) / '+iNp.ToString+'(np) = '+FloatToStr(calcImpar));
        inc(num);
        total := total+calcImpar;
      end;
    end;
    inc(iNp);
  end;
  lstRes2.Items.Add('TOTAL = '+FloatToStr(total));
end;

end.
