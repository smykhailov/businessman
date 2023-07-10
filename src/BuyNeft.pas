unit BuyNeft;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  lmdbtn, RXSlider, lmdctrl, lmdstdcS, SherBvl, ExtCtrls, sherfrm;

type
  TBuyNeftForm = class(TForm)
    Panel1: TPanel;
    SherlockBevel1: TSherlockBevel;
    HowMuchBarrLabel: TLMDSimpleLabel;
    BuyNeftSlider: TRxSlider;
    BuyButton: TLMDOfficeButton;
    MinNeftValueLabel: TLMDSimpleLabel;
    MaxNeftValueLabel: TLMDSimpleLabel;
    ValueLabel: TLMDSimpleLabel;
    procedure FormShow(Sender: TObject);
    procedure BuyNeftSliderChange(Sender: TObject);
    procedure BuyButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BuyNeftForm: TBuyNeftForm;

implementation

uses MainUnit;

{$R *.DFM}

procedure TBuyNeftForm.FormShow(Sender: TObject);
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
    CaptionB := 'Покупка нефти';
    Gradient := True;
    ShowStdCaption:=False;
  end;
  BuyNeftSlider.MaxValue:=Inf.Money div Exch.NeftPrice;
  BuyNeftSlider.Value:=1;
  ValueLabel.Caption:='1';
  MaxNeftValueLabel.Caption:=IntToStr(BuyNeftSlider.MaxValue);
end;

procedure TBuyNeftForm.BuyNeftSliderChange(Sender: TObject);
begin
  ValueLabel.Caption:=IntToStr(BuyNeftSlider.Value)
end;

procedure TBuyNeftForm.BuyButtonClick(Sender: TObject);
begin
  Inf.Money:=Inf.Money-(StrToInt(ValueLabel.Caption)*Exch.NeftPrice);
  HouseInf.NeftNum:=HouseInf.NeftNum+BuyNeftSlider.Value;
  with MainForm do
  begin
    MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
    MyNeftLabel.Caption:='Нефть     '+IntToStr(HouseInf.NeftNum)+
      '     баррелей.';
    GameControl.ActivePage:=Information;
    Timer.Enabled:=True;
    SellNeftButton.Enabled:=True;
    with Hosp do
    begin
      DayLech:=0;
      DayVupiski:=0;
      MonthLech:=0;
      MonthVupiski:=0;
      YearLech:=0;
      YearVupiski:=0;
    end;
  end;
  Close;
end;

end.
