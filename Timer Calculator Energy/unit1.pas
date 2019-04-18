unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Inicializar: TButton;
    edclie: TEdit;
    edkwh: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbkwh: TLabel;
    lbclie: TListBox;
    rgclien: TRadioGroup;
    Tlight: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure InicializarClick(Sender: TObject);
    procedure lbclieClick(Sender: TObject);
    procedure rgclienClick(Sender: TObject);
    procedure TlightTimer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  nm,tc,med: string;
  kwh: real;
  kil,med1 : integer;


implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  med:=lbkwh.Caption;
  med1:=StrToFloat(med)-StrToFloat(lbkwh.Caption);
  lbclie.Items.Add('Cliente:          ' + nm);
  lbclie.Items.Add('----------------------------------');
  lbclie.Items.Add('Tipo de Cliente:          ' + tc);
  lbclie.Items.Add('----------------------------------');
  lbclie.Items.Add('Medição Anterior:        ' + med);
  lbclie.Items.Add('----------------------------------');
  lbclie.Items.Add('Valor Consumido:        ' + med1);
  lbclie.Items.Add('----------------------------------');
  lbclie.Items.Add('Mês:        ' + mes);
  lbclie.Items.Add('----------------------------------');
  lbclie.Items.Add('Valor a pagar:        ' + ;
  lbclie.Items.Add('----------------------------------');

end;

procedure TForm1.InicializarClick(Sender: TObject);
begin
  kil:=0;
  Tlight.Enabled:=True;
  nm:=edclie.Text;
  kwh:=StrToFloat(edkwh.Text);
  edkwh.Clear;
  edclie.Clear;

end;

procedure TForm1.lbclieClick(Sender: TObject);
begin

end;

procedure TForm1.rgclienClick(Sender: TObject);
begin
  if rgclien.ItemIndex=0 then
     tc:='Residencial';

  if rgclien.ItemIndex=1 then
     tc:='Comercial';
end;

procedure TForm1.TlightTimer(Sender: TObject);
begin
  inc(kil);
  lbkwh.Caption:=FormatFloat('0000',kil);

end;

end.

