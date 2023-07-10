unit About;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Animate, GIFCtrl, SherWnd, lmdctrl, lmdstdcS,
  sherline, sherfrm;

type
  TAboutForm = class(TForm)
    AboutImage: TRxGIFAnimator;
    SherlockWindow1: TSherlockWindow;
    GameLabel: TLMDSimpleLabel;
    VersionLabel: TLMDSimpleLabel;
    Label1: TLabel;
    SherlockLine1: TSherlockLine;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForm: TAboutForm;

implementation

uses MainUnit;

{$R *.DFM}

procedure TAboutForm.FormShow(Sender: TObject);
var
  Shf: TSherlockFrame;
begin
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
    CaptionB := 'О программе...';
    Gradient := True;
    ShowStdCaption:=False;
  end;
  AboutImage.Image:=MainForm.RxGIFAnimator1.Image;
end;

end.
