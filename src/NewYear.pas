unit NewYear;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, TeeProcs, TeEngine, Chart, StdCtrls, Series, sherfrm, RXSpin,
  sherctrl, SherBvl, lmdctrl, lmdbtn, lmdmmS;

type
  TNewYearForm = class(TForm)
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Panel1: TPanel;
    ZoomCheck: TSherlockCheck;
    NeftCheck: TSherlockCheck;
    ZemlCheck: TSherlockCheck;
    SherlockBevel1: TSherlockBevel;
    Check3d: TSherlockCheck;
    RxSpinEdit1: TRxSpinEdit;
    MarksCheck: TSherlockCheck;
    Close3dButton: TLMD3DCaptionButton;
    LMD3DCaptionButton1: TLMD3DCaptionButton;
    procedure FormShow(Sender: TObject);
    procedure Check3dClick(Sender: TObject);
    procedure RxSpinEdit1Change(Sender: TObject);
    procedure ZoomCheckClick(Sender: TObject);
    procedure NeftCheckClick(Sender: TObject);
    procedure ZemlCheckClick(Sender: TObject);
    procedure MarksCheckClick(Sender: TObject);
    procedure Close3dButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewYearForm: TNewYearForm;

implementation

uses MainUnit;

{$R *.DFM}

procedure TNewYearForm.FormShow(Sender: TObject);
var
  Shf: TSherlockFrame;
  i: byte;
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
    CaptionB := 'График изменений цен на бирже';
    Gradient := True;
    ShowStdCaption:=False;
  end;
  Series1.Active:=True;
  Series2.Active:=True;
  Series1.Marks.Visible:=False;
  Series2.Marks.Visible:=False;
  with Chart1 do
  begin
    View3D:=True;
    Chart3DPercent:=15;
    AllowZoom:=True;
  end;
  Check3d.Checked:=True;
  RXSpinEdit1.Enabled:=True;
  RXSpinEdit1.Value:=15;
  MarksCheck.Checked:=False;
  ZoomCheck.Checked:=True;
  NeftCheck.Checked:=True;
  ZemlCheck.Checked:=True;
  for i:=1 to 12 do
  begin
    Series1.AddXY(i,PriceNeft[i-1],'',clRed);
    Series2.AddXY(i,PriceZeml[i-1],'',clGreen);
  end;
end;

procedure TNewYearForm.Check3dClick(Sender: TObject);
begin
  if Check3d.Checked = True then
  begin
    RxSpinEdit1.Enabled:=True;
    Chart1.View3D:=True;
    Chart1.Chart3DPercent:=Round(RXSpinEdit1.Value);
  end
  else
  begin
    RxSpinEdit1.Enabled:=False;
    Chart1.View3D:=False;
  end;
end;

procedure TNewYearForm.RxSpinEdit1Change(Sender: TObject);
begin
  Chart1.Chart3DPercent:=Round(RXSpinEdit1.Value);
end;

procedure TNewYearForm.ZoomCheckClick(Sender: TObject);
begin
  if ZoomCheck.Checked=True then
    Chart1.AllowZoom:=True
  else
    Chart1.AllowZoom:=False;
end;

procedure TNewYearForm.NeftCheckClick(Sender: TObject);
begin
  if (NeftCheck.Checked=True)and(ZemlCheck.Checked=True) then
  begin
    Series1.Active:=True;
    Series2.Active:=True;
  end;
  if (NeftCheck.Checked=True)and(ZemlCheck.Checked=False) then
  begin
    Series1.Active:=True;
    Series2.Active:=False;
  end;
  if (NeftCheck.Checked=False)and(ZemlCheck.Checked=True) then
  begin
    Series2.Active:=True;
    Series1.Active:=False;
  end;
  if (NeftCheck.Checked=False)and(ZemlCheck.Checked=False) then
  begin
    Series2.Active:=True;
    Series1.Active:=True;
    NeftCheck.Checked:=True;
    ZemlCheck.Checked:=True;
  end;
end;

procedure TNewYearForm.ZemlCheckClick(Sender: TObject);
begin
  if (NeftCheck.Checked=True)and(ZemlCheck.Checked=True) then
  begin
    Series1.Active:=True;
    Series2.Active:=True;
  end;
  if (NeftCheck.Checked=True)and(ZemlCheck.Checked=False) then
  begin
    Series1.Active:=True;
    Series2.Active:=False;
  end;
  if (NeftCheck.Checked=False)and(ZemlCheck.Checked=True) then
  begin
    Series2.Active:=True;
    Series1.Active:=False;
  end;
  if (NeftCheck.Checked=False)and(ZemlCheck.Checked=False) then
  begin
    Series2.Active:=True;
    Series1.Active:=True;
    NeftCheck.Checked:=True;
    ZemlCheck.Checked:=True;
  end;
end;

procedure TNewYearForm.MarksCheckClick(Sender: TObject);
begin
  if MarksCheck.Checked=True then
  begin
    Series1.Marks.Visible:=True;
    Series2.Marks.Visible:=True;
  end
  else
  begin
    Series1.Marks.Visible:=False;
    Series2.Marks.Visible:=False;
  end
end;

procedure TNewYearForm.Close3dButtonClick(Sender: TObject);
begin
  MainForm.Timer.Enabled:=True;
  Series1.Clear;
  Series2.Clear;
  Close;
end;

end.
