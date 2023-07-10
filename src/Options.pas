unit Options;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  lmdctrl, lmdstdcS, sherswch, sherfrm, ExtCtrls, lmdbtn, lmdmmS, IniFiles;

type
  TOptionForm = class(TForm)
    Panel1: TPanel;
    HintSwitch: TSherlockSwitch;
    ShowHintLabel: TLMDSimpleLabel;
    TraySwitch: TSherlockSwitch;
    TryBarLabel: TLMDSimpleLabel;
    StopAniSwitch: TSherlockSwitch;
    StopAniLabel: TLMDSimpleLabel;
    OkButton: TLMD3DCaptionButton;
    procedure FormShow(Sender: TObject);
    procedure OkButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OptionForm: TOptionForm;

implementation

uses MainUnit;

{$R *.DFM}

procedure TOptionForm.FormShow(Sender: TObject);
var
  Shf: TSherlockFrame;
begin
  Opt:=TIniFile.Create('Bussiness.ini');
  MainForm.Timer.Enabled:=False;
  Shf:=TSherlockFrame.Create(Self);
  with Shf do
  begin
    CaptionAFont.Charset := RUSSIAN_CHARSET;
    CaptionAFont.Color := clLime;
    CaptionAFont.Height := -13;
    CaptionAFont.Name := 'Courier';
    CaptionAFont.Style := [fsBold];
    CaptionBFont.Charset := RUSSIAN_CHARSET;
    CaptionBFont.Color := clYellow;
    CaptionBFont.Height := -13;
    CaptionBFont.Name := 'Arial';
    CaptionBFont.Style := [];
    CaptionA := 'Коммерсант';
    CaptionB := 'Настройки';
    Gradient := True;
    ShowStdCaption:=True;
  end;
  with Opt do
  begin
    if (ReadBool('Options','Show Hint',True) = True) then
      HintSwitch.Checked:=True
    else
      HintSwitch.Checked:=False;
    if (ReadBool('Options','Tray Icon',True) = True) then
      TraySwitch.Checked:=True
    else
      TraySwitch.Checked:=False;
    if (ReadBool('Options','Stop Animation',True) = True) then
      StopAniSwitch.Checked:=True
    else
      StopAniSwitch.Checked:=False;
  end;
end;

procedure TOptionForm.OkButtonClick(Sender: TObject);
begin
  Opt:=TIniFile.Create('Bussiness.ini');
  if HintSwitch.Checked = True then
  begin
    MainForm.ShowHint:=True;
  end
  else
  begin
    MainForm.ShowHint:=False;
  end;
  if TraySwitch.Checked = True then
  begin
    MainForm.RxTrayIcon.Active:=True
  end
  else
  begin
    MainForm.RxTrayIcon.Active:=False;
  end;
  if StopAniSwitch.Checked = True then
  begin
    MainForm.RxGIFAnimator1.FrameIndex:=0;
    MainForm.RxGIFAnimator1.Animate:=False;
  end
  else
  begin
    MainForm.RxGIFAnimator1.Animate:=True;
  end;
  with Opt do
  begin
    WriteBool('Options','Show Hint',HintSwitch.Checked);
    WriteBool('Options','Tray Icon',TraySwitch.Checked);
    WriteBool('Options','Stop Animation',StopAniSwitch.Checked);
  end;
  if (MainForm.GameControl.ActivePage = MainForm.Information) then
    MainForm.Timer.Enabled:=True
  else
    MainForm.Timer.Enabled:=False;
  Close;
end;

end.
