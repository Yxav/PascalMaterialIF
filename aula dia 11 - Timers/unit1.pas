unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnshow: TButton;
    btnon: TButton;
    btnof: TButton;
    btativa: TButton;
    lbshow: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timerball: TTimer;
    Timerled: TTimer;
    TrackBar1: TTrackBar;
    procedure btativaClick(Sender: TObject);
    procedure btnofClick(Sender: TObject);
    procedure btnonClick(Sender: TObject);
    procedure btnshowClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure TimerballTimer(Sender: TObject);
    procedure TimerledTimer(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  x : integer = 5;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.timer1Timer(Sender: TObject);
begin
  Form1.Caption:=DateTimeToStr(now);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  lbshow.Caption:='Oláá';
  Timer2.Enabled:=False;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
  lbshow.Caption:='';
  Timer3.Enabled:=False;
end;

procedure TForm1.TimerballTimer(Sender: TObject);
begin
  Shape3.Left:= Shape3.Left+x;
  if shape3.Left >= (form1.Width - Shape3.Width) then
     x:=-5;

  if Shape3.left <=0 then
     x:=5;
end;

procedure TForm1.TimerledTimer(Sender: TObject);
begin
  if Shape2.Brush.Color = clNavy then
     Shape2.Brush.Color:= clHighlight
  else
      Shape2.Brush.Color:= clNavy;

end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  Timerled.Interval:=TrackBar1.Position;

end;

procedure TForm1.btnshowClick(Sender: TObject);
begin
  Timer2.Enabled:=True;
  Timer3.Enabled:=True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.btnonClick(Sender: TObject);
begin
  Timerled.Enabled:=True;
end;

procedure TForm1.btnofClick(Sender: TObject);
begin
  Timerled.Enabled:=False;
  Shape2.Brush.Color :=clNavy;
end;

procedure TForm1.btativaClick(Sender: TObject);
begin
  Timerball.Enabled:=True;
end;

end.

