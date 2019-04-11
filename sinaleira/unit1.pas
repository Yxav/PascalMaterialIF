unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnchan: TButton;
    btnsai: TButton;
    btnon: TButton;
    edred: TEdit;
    edyel: TEdit;
    edgr: TEdit;
    lbver: TLabel;
    lbyel: TLabel;
    lbgr: TLabel;
    Shape1: TShape;
    ballred: TShape;
    ballyel: TShape;
    ballgr: TShape;
    timered: TTimer;
    timeryel: TTimer;
    timergr: TTimer;
    procedure btnchanClick(Sender: TObject);
    procedure btnonClick(Sender: TObject);
    procedure btnsaiClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure lbverClick(Sender: TObject);
    procedure timeredTimer(Sender: TObject);
    procedure timergrTimer(Sender: TObject);
    procedure timeryelTimer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  red, yel, gr: Integer;
  botao:Boolean=True;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnchanClick(Sender: TObject);
begin
  lbgr.Visible:=True;
  lbyel.Visible:=True;
  lbver.Visible:=True;
  edgr.Visible:=True;
  edyel.Visible:=True;
  edred.Visible:=True;

end;

procedure TForm1.btnonClick(Sender: TObject);
begin


  timered.Enabled:=True;
  timeryel.Enabled:=True;
  timergr.Enabled:=True;
  btnchan.Visible:=False;
  botao:=False;
  btnon.Caption:='Desligar';

            end;




procedure TForm1.btnsaiClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: char);
begin
  if Key = #13 then
     begin
     red:=StrToInt(edred.Caption);
     yel:=StrToInt(edyel.Caption);
     gr:=StrToInt(edgr.Caption);

     timered.Interval:=red;
     timeryel.Interval:=yel;
     timergr.Interval:=gr;
      end;

end;

procedure TForm1.lbverClick(Sender: TObject);
begin

end;

procedure TForm1.timeredTimer(Sender: TObject);
begin
  ballred.Brush.Color:=clRed;



end;

procedure TForm1.timergrTimer(Sender: TObject);
begin

  ballyel.Brush.Color:=clYellow;

end;

procedure TForm1.timeryelTimer(Sender: TObject);
begin

  ballgr.Brush.Color:=clGreen;
end;

end.

