unit SellZeml;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  lmdbtn, RXSlider, lmdctrl, lmdstdcS, SherBvl, ExtCtrls, sherfrm;

type
  TSellZemlForm = class(TForm)
    Panel1: TPanel;
    SherlockBevel1: TSherlockBevel;
    HowMuchAkrLabel: TLMDSimpleLabel;
    SellZemlSlider: TRxSlider;
    SellButton: TLMDOfficeButton;
    MinZemlValueLabel: TLMDSimpleLabel;
    MaxZemlValueLabel: TLMDSimpleLabel;
    ValueLabel: TLMDSimpleLabel;
    procedure FormShow(Sender: TObject);
    procedure SellZemlSliderChange(Sender: TObject);
    procedure SellButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SellZemlForm: TSellZemlForm;

implementation

uses MainUnit;

{$R *.DFM}

procedure TSellZemlForm.FormShow(Sender: TObject);
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
    CaptionB := 'Продажа земли';
    Gradient := True;
    ShowStdCaption:=False;
  end;
  SellZemlSlider.MaxValue:=HouseInf.ZemlyaNum;
  SellZemlSlider.Value:=1;
  ValueLabel.Caption:='1';
  MaxZemlValueLabel.Caption:=IntToStr(SellZemlSlider.MaxValue);
end;

procedure TSellZemlForm.SellZemlSliderChange(Sender: TObject);
begin
  ValueLabel.Caption:=IntToStr(SellZemlSlider.Value)
end;

procedure TSellZemlForm.SellButtonClick(Sender: TObject);
begin
  Inf.Money:=Inf.Money+(StrToInt(ValueLabel.Caption)*Exch.ZemlyaPrice);
  HouseInf.ZemlyaNum:=HouseInf.ZemlyaNum-SellZemlSlider.Value;
  with MainForm do
  begin
    MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
    MyZemlyaLabel.Caption:='Земля     '+IntToStr(HouseInf.ZemlyaNum)+
      '     акров.';
    GameControl.ActivePage:=Information;
    Timer.Enabled:=True;
  end;
  Close;
end;

end.
