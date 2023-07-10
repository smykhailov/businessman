unit TakeMoney;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  lmdbtn, RXSlider, lmdctrl, lmdstdcS, SherBvl, ExtCtrls, sherfrm,
  StdCtrls, Spin, RXSpin;

type
  TTakeMoneyForm1 = class(TForm)
    Panel1: TPanel;
    SherlockBevel1: TSherlockBevel;
    HowMuchBarrLabel: TLMDSimpleLabel;
    TakeMoneySlider: TRxSlider;
    TakeButton: TLMDOfficeButton;
    MinTakeValueLabel: TLMDSimpleLabel;
    MaxTakeMoneyValueLabel: TLMDSimpleLabel;
    ValueLabel: TLMDSimpleLabel;
    HowMonthLabel: TLMDSimpleLabel;
    MonthSpinEdit: TRxSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure TakeMoneySliderChange(Sender: TObject);
    procedure TakeButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TakeMoneyForm1: TTakeMoneyForm1;

implementation

uses MainUnit;

{$R *.DFM}

procedure TTakeMoneyForm1.FormShow(Sender: TObject);
var
  Shf: TSherlockFrame;
begin
  randomize;
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
    CaptionB := 'Взять деньги в кредит';
    Gradient := True;
    ShowStdCaption:=False;
  end;
  TakeMoneySlider.MaxValue:=random(10000)+5000;
  TakeMoneySlider.Value:=1;
  ValueLabel.Caption:='1';
  MonthSpinEdit.Value:=1;
  MaxTakeMoneyValueLabel.Caption:=IntToStr(TakeMoneySlider.MaxValue);
end;

procedure TTakeMoneyForm1.TakeMoneySliderChange(Sender: TObject);
begin
  ValueLabel.Caption:=IntToStr(TakeMoneySlider.Value)
end;

procedure TTakeMoneyForm1.TakeButtonClick(Sender: TObject);
var
  TempMonth: string[12];
begin
  randomize;
  Inf.Money:=Inf.Money+StrToInt(ValueLabel.Caption);
  Bank.Credit1:=TakeMoneySlider.Value;
  Inf.YouMust:=TakeMoneySlider.Value;
  with MainForm do
  begin
    MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
    with Secr do
    begin
      Credit1_Day:=StrToInt(DayLabel.Caption);
      if (Credit1_Day >= 28) then
        Credit1_Day:=Credit1_Day-5;
      Credit1_Month:=StrToInt(TempLabel.Caption)+Round(MonthSpinEdit.Value);
      Credit1_Year:=StrToInt(YearLabel.Caption);
      if (Credit1_Month = 13) then
      begin
        Credit1_Month:=1;
        Credit1_Year:=Credit1_Year+1;
      end;
    end;
    case Secr.Credit1_Month of
      1: TempMonth:=' Января ';
      2: TempMonth:=' Февраля ';
      3: TempMonth:=' Марта ';
      4: TempMonth:=' Апреля ';
      5: TempMonth:=' Мая ';
      6: TempMonth:=' Июня ';
      7: TempMonth:=' Июля ';
      8: TempMonth:=' Августа ';
      9: TempMonth:=' Сентября ';
      10: TempMonth:=' Октября ';
      11: TempMonth:=' Ноября ';
      12: TempMonth:=' Декабря ';
    end;
    YouMustReturnMoneyLabel1.Caption:='Деньги Вы должны вернуть '+IntToStr(Secr.Credit1_Day)+
      TempMonth + IntToStr(Secr.Credit1_Year);
    YouLabel.Caption:='Вы должны    '+IntToStr(Inf.YouMust)+'  Гроблей(я).';
    CreditLabel1.Caption:='Вы получили  '+IntToStr(Bank.Credit1)+'  Гроблей(я).';
    TakeButton1.Enabled:=False;
    GameControl.ActivePage:=Information;
    Timer.Enabled:=True;
  end;
  Close;
end;

end.
