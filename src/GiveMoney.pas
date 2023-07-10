unit GiveMoney;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  lmdbtn, RXSlider, lmdctrl, lmdstdcS, SherBvl, ExtCtrls, sherfrm,
  StdCtrls, Spin, RXSpin;

type
  TGiveMoneyForm1 = class(TForm)
    Panel1: TPanel;
    SherlockBevel1: TSherlockBevel;
    HowMuchBarrLabel: TLMDSimpleLabel;
    GiveMoneySlider: TRxSlider;
    GiveButton: TLMDOfficeButton;
    MinNeftValueLabel: TLMDSimpleLabel;
    MaxGiveMoneyValueLabel: TLMDSimpleLabel;
    ValueLabel: TLMDSimpleLabel;
    HowMonthLabel: TLMDSimpleLabel;
    MonthSpinEdit: TRxSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure GiveMoneySliderChange(Sender: TObject);
    procedure GiveButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GiveMoneyForm1: TGiveMoneyForm1;

implementation

uses MainUnit;

{$R *.DFM}

procedure TGiveMoneyForm1.FormShow(Sender: TObject);
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
    CaptionB := 'Дать деньги в долг';
    Gradient := True;
    ShowStdCaption:=False;
  end;
  GiveMoneySlider.MaxValue:=Inf.Money;
  GiveMoneySlider.Value:=1;
  ValueLabel.Caption:='1';
  MonthSpinEdit.Value:=1;
  MaxGiveMoneyValueLabel.Caption:=IntToStr(GiveMoneySlider.MaxValue);
end;

procedure TGiveMoneyForm1.GiveMoneySliderChange(Sender: TObject);
begin
  ValueLabel.Caption:=IntToStr(GiveMoneySlider.Value)
end;

procedure TGiveMoneyForm1.GiveButtonClick(Sender: TObject);
var
  TempMonth: string[12];
begin
  randomize;
  Inf.Money:=Inf.Money-StrToInt(ValueLabel.Caption);
  with Bank do
  begin
    Dolg1:=GiveMoneySlider.Value;
    Bankrot_Day:=random(24)+3;
    Bankrot_Month:=random(11)+1;
    Bankrot_Year:=StrToInt(MainForm.YearLabel.Caption);
  end;
  Inf.ForYouMust:=GiveMoneySlider.Value;
  with MainForm do
  begin
    MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
    with Secr do
    begin
      Dolg1_Day:=StrToInt(DayLabel.Caption);
      if (Dolg1_Day >= 28) then
        Dolg1_Day:=Dolg1_Day-5;
      Dolg1_Month:=StrToInt(TempLabel.Caption)+Round(MonthSpinEdit.Value);
      Dolg1_Year:=StrToInt(YearLabel.Caption);
      if (Dolg1_Month = 13) then
      begin
        Dolg1_Month:=1;
        Dolg1_Year:=Dolg1_Year+1;
      end;
    end;
    case Secr.Dolg1_Month of
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
    ReturnMoneyLabel1.Caption:='Деньги Вам вернут '+IntToStr(Secr.Dolg1_Day)+
      TempMonth + IntToStr(Secr.Dolg1_Year);
    ForYouLabel.Caption:='Вам должны   '+IntToStr(Inf.ForYouMust)+'  Гроблей(я).';
    VkladLabel1.Caption:='Вы вложили  '+IntToStr(Bank.Dolg1)+'  Гроблей(я).';
    GiveButton1.Enabled:=False;
    GameControl.ActivePage:=Information;
    Timer.Enabled:=True;
  end;
  Close;
end;

end.
