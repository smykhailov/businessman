unit BuyZeml;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  lmdbtn, RXSlider, lmdctrl, lmdstdcS, SherBvl, ExtCtrls, sherfrm;

type
  TBuyZemlForm = class(TForm)
    Panel1: TPanel;
    SherlockBevel1: TSherlockBevel;
    HowMuchAkrLabel: TLMDSimpleLabel;
    BuyZemlSlider: TRxSlider;
    BuyButton: TLMDOfficeButton;
    MinZemlValueLabel: TLMDSimpleLabel;
    MaxZemlValueLabel: TLMDSimpleLabel;
    ValueLabel: TLMDSimpleLabel;
    procedure FormShow(Sender: TObject);
    procedure BuyZemlSliderChange(Sender: TObject);
    procedure BuyButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BuyZemlForm: TBuyZemlForm;

implementation

uses MainUnit;

{$R *.DFM}

procedure TBuyZemlForm.FormShow(Sender: TObject);
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
    CaptionB := 'Покупка земли';
    Gradient := True;
    ShowStdCaption:=False;
  end;
  BuyZemlSlider.MaxValue:=Inf.Money div Exch.ZemlyaPrice;
  BuyZemlSlider.Value:=1;
  ValueLabel.Caption:='1';
  MaxZemlValueLabel.Caption:=IntToStr(BuyZemlSlider.MaxValue);
end;

procedure TBuyZemlForm.BuyZemlSliderChange(Sender: TObject);
begin
  ValueLabel.Caption:=IntToStr(BuyZemlSlider.Value)
end;

procedure TBuyZemlForm.BuyButtonClick(Sender: TObject);
begin
  Inf.Money:=Inf.Money-(StrToInt(ValueLabel.Caption)*Exch.ZemlyaPrice);
  HouseInf.ZemlyaNum:=HouseInf.ZemlyaNum+BuyZemlSlider.Value;
  with MainForm do
  begin
    MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
    MyZemlyaLabel.Caption:='Земля     '+IntToStr(HouseInf.ZemlyaNum)+
      '     акров.';
    GameControl.ActivePage:=Information;
    Timer.Enabled:=True;
    SellZemlButton.Enabled:=True;
  end;
  Close;
end;

end.
