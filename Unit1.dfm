object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'DoomFire'
  ClientHeight = 443
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Img: TImage
    Left = 0
    Top = 0
    Width = 30
    Height = 30
    Stretch = True
  end
  object Label1: TLabel
    Left = 23
    Top = 317
    Width = 67
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Power'
  end
  object Label2: TLabel
    Left = 191
    Top = 317
    Width = 92
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Deoxygenation'
  end
  object Button1: TButton
    Left = 111
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Ignite'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 15
    Top = 375
    Width = 90
    Height = 25
    Caption = '- Power'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 15
    Top = 406
    Width = 90
    Height = 25
    Caption = '+ Power'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 111
    Top = 367
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 191
    Top = 406
    Width = 92
    Height = 25
    Caption = '- Oxygen'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 192
    Top = 375
    Width = 92
    Height = 25
    Caption = '+ Oxygen'
    TabOrder = 5
    OnClick = Button6Click
  end
  object TrackBar1: TTrackBar
    Left = 15
    Top = 336
    Width = 90
    Height = 33
    Max = 255
    Min = 5
    Frequency = 5
    Position = 255
    TabOrder = 6
    OnChange = TrackBar1Change
  end
  object TrackBar2: TTrackBar
    Left = 191
    Top = 336
    Width = 92
    Height = 33
    Max = 225
    Min = 10
    Frequency = 5
    Position = 10
    ShowSelRange = False
    TabOrder = 7
    OnChange = TrackBar2Change
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 135
    Top = 392
  end
end
