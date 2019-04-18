unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btini: TButton;
    Button1: TButton;
    edini: TEdit;
    edend: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ms: TLabel;
    lbcount: TLabel;
    tcoun: TTimer;
    procedure btiniClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure tcounTimer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  ini, term, ti: Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.tcounTimer(Sender: TObject);
begin
  inc(ti);
  lbcount.Caption:=FormatFloat ('0000', ti);

   if (ti=term) then
     tcoun.Enabled:=False;
end;

procedure TForm1.btiniClick(Sender: TObject);
begin
  ti:=0;
  ini:=StrToInt(edini.Text);
  term:=StrToInt(edend.Text);
  tcoun.Interval:=ini;
  tcoun.Enabled:=True;
  lbcount.Caption:=IntToStr(tcoun.Interval);






end;

end.

