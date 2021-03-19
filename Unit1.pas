unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Img: TImage;
    Button1: TButton;
    Timer1: TTimer;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  pow: byte = 255;
  oxygen: byte = 25;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i: integer;
begin
  pow := TrackBar1.Position;

  for i := 0 to 29 do
    img.Canvas.Pixels[i,29] := rgb(pow,0,0);
  timer1.Enabled := true;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i: integer;
begin
  if pow >= 5 then
    pow := pow - 5;

  TrackBar1.Position := pow;

  for i := 0 to 29 do
    img.Canvas.Pixels[i,29] := rgb(pow,0,0);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i: integer;
begin
  if pow <= 250 then
    pow := pow + 5;

  TrackBar1.Position := pow;

  for i := 0 to 29 do
    img.Canvas.Pixels[i,29] := rgb(pow,0,0);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i:integer;
begin
  pow := 0;

  for i := 0 to 29 do
    img.Canvas.Pixels[i,29] := rgb(pow,0,0);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if oxygen <= 220 then
    oxygen := oxygen + 5;

  TrackBar2.Position := oxygen;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if oxygen >= 15 then
    oxygen := oxygen - 5;

  TrackBar2.Position := oxygen;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  randomize;
  img.Canvas.Brush.Color := clblack;
  img.Canvas.FillRect(rect(0,0,30,30));
  img.Width := 300;
  img.Height := 300;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  i,x,y: integer;
begin
  {img.Width := 30;
  img.Height := 30;}

  for i := 0 to 29 do
    img.Canvas.Pixels[i,29] := rgb(pow,0,0);

  for y := 0 to 29 do
    for x := 0 to 29 do
    begin
      if y + 1 < 30 then
      begin
        img.Canvas.Pixels[x-(random(2)),y] := ColorToRGB(img.Canvas.Pixels[x,y+1]) - rgb(random(oxygen),0,0);
      end;
    end;

  {img.Width := 300;
  img.Height := 300;}
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
var
  i: integer;
begin
  pow := TrackBar1.Position;

  for i := 0 to 29 do
    img.Canvas.Pixels[i,29] := rgb(pow,0,0);
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
  oxygen := TrackBar2.Position;
  //form1.Caption := inttostr(TrackBar2.Position) + ' ' + inttostr(oxygen);
end;

end.
