unit SellNeft;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  lmdbtn, RXSlider, lmdctrl, lmdstdcS, SherBvl, ExtCtrls, sherfrm;

type
  TSellNeftForm = class(TForm)
    Panel1: TPanel;
    SherlockBevel1: TSherlockBevel;
    HowMuchBarrLabel: TLMDSimpleLabel;
    SellNeftSlider: TRxSlider;
    SellButton: TLMDOfficeButton;
    MinNeftValueLabel: TLMDSimpleLabel;
    MaxNeftValueLabel: TLMDSimpleLabel;
    ValueLabel: TLMDSimpleLabel;
    procedure FormShow(Sender: TObject);
    procedure SellNeftSliderChange(Sender: TObject);
    procedure SellButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SellNeftForm: TSellNeftForm;

implementation

uses MainUnit;

{$R *.DFM}

procedure TSellNeftForm.FormShow(Sender: TObject);
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
    CaptionB := 'Продажа нефти';
    Gradient := True;
    ShowStdCaption:=False;
  end;
  SellNeftSlider.MaxValue:=HouseInf.NeftNum;
  SellNeftSlider.Value:=1;
  ValueLabel.Caption:='1';
  MaxNeftValueLabel.Caption:=IntToStr(SellNeftSlider.MaxValue);
end;

procedure TSellNeftForm.SellNeftSliderChange(Sender: TObject);
begin
  ValueLabel.Caption:=IntToStr(SellNeftSlider.Value);
end;

procedure TSellNeftForm.SellButtonClick(Sender: TObject);
begin
  Inf.Money:=Inf.Money+(StrToInt(ValueLabel.Caption)*Exch.NeftPrice);
  HouseInf.NeftNum:=HouseInf.NeftNum-SellNeftSlider.Value;
  with MainForm do
  begin
    MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
    MyNeftLabel.Caption:='Нефть     '+IntToStr(HouseInf.NeftNum)+
      '     баррелей.';
    GameControl.ActivePage:=Information;
    Timer.Enabled:=True;
  end;
  if HouseInf.NeftNum < Secr.Neft then
  begin
    with Hosp do
    begin
      DayLech:=StrToInt(MainForm.DayLabel.Caption)+(random(3)+2);
      if DayLech >= 31 then
        DayLech:=DayLech-8;
      MonthLech:=StrToInt(MainForm.TempLabel.Caption);
      YearLech:=StrToInt(MainForm.YearLabel.Caption)
    end;
  end;
  Close;
end;

end.
