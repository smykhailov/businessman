unit Registration;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, lmdctrl, lmdstdcS, sherfrm, sherline, SherBvl, RXSpin;

type
  TRegForm = class(TForm)
    RegEdit: TEdit;
    RegLabel: TLMDSimpleLabel;
    OK: TButton;
    NameLabel: TLMDSimpleLabel;
    AgeLabel: TLMDSimpleLabel;
    AgeSpinEdit: TRxSpinEdit;
    SherlockBevel1: TSherlockBevel;
    SherlockLine1: TSherlockLine;
    procedure OKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegForm: TRegForm;

implementation

uses MainUnit, First;

{$R *.DFM}

procedure TRegForm.OKClick(Sender: TObject);
var
  RandomHouse, RandomAvto: byte;
  MonthTemp: string[10];
begin
  randomize;
  with MainForm do
  begin
    with Inf do
    begin
      Money:=random(70000)+50000;
      CreditPrc:=random(6)+6;
      DolgPrc:=random(6)+6;        // Начальные сведения о
      DomPrc:=random(4)+4;         // закладке "Сообщения"
      ZemlyaPrc:=random(4)+4;
      YouMust:=0;
      ForYouMust:=0
    end;
    with Exch do
    begin
      NeftPrice:=random(18)+17;        // Начальные сведения о
      ZemlyaPrice:=random(350)+180;    // закладке "Биржа"
    end;
    with HouseInf do
    begin
      NeftNum:=random(80)+70;          // Начальные сведения о
      ZemlyaNum:=random(70)+30;        // закладке "Хозяйство"
    end;
    with HousePr do
    begin
      Price1:=random(2500)+8500;
      Price2:=random(2500)+10000;
      Price3:=random(2500)+11500;      // Начальные сведения о
      Price4:=random(2500)+13000;      // ценах на дома на "Рынке"
      Price5:=random(2500)+14500;
      Price6:=random(2500)+16000;
      Price7:=random(2500)+17500;
    end;
    with AvtoPr do
    begin
      Price1:=random(1500)+5500;
      Price2:=random(1500)+6500;
      Price3:=random(1500)+7500;        // Начальные сведения о
      Price4:=random(1500)+8500;        // ценах на авто. на "Рынке"
      Price5:=random(1500)+9500;
      Price6:=random(1500)+10500;
      Price7:=random(1500)+11500;
    end;
    with Secr do
    begin
      Neft:=random(7)+5;              // Начальные сведения о
      Birth_Day:=random(25)+2;         // закладке "Секретарь"
      Birth_Month:=random(11)+1;
    end;
    with Hosp do
    begin
      DayLech:=0;
      DayVupiski:=0;
      MonthLech:=0;
      MonthVupiski:=0;
      YearLech:=0;
      YearVupiski:=0;
    end;
    with StrahovkaDoma do
    begin
      SDay:=random(25)+2;
      SMonth:=random(11)+1;
      SYear:=2000;
    end;
    with StrahovkaAvto do
    begin
      SDay:=random(25)+2;
      SMonth:=Random(11)+1;
      SYear:=2000;
    end;
    GameControl.ActivePage:=Information;
    DayLabel.Caption:='1';
    TempLabel.Caption:='1';
    MonthLabel.Caption:='Января';
    YearLabel.Caption:='2000';
    ForYouLabel.Caption:='Вам должны   0  Гроблей(я).';
    YouLabel.Caption:='Вы должны    0  Гроблей(я).';
    VkladLabel1.Caption:='Деньги Вы еще не давали.';
    CreditLabel1.Caption:='Кредиты Вы еще не брали.';
    GiveButton1.Enabled:=True;
    TakeButton1.Enabled:=True;
    SellDomButton.Enabled:=True;
    SellAvtoButton.Enabled:=True;
    ReturnMoneyLabel1.Caption:='Денег в долг Вы не давали.';
    YouMustReturnMoneyLabel1.Caption:='Кредит в банке Вы не брали.';
    ExMonthNeftLabel.Caption:='НФ  '+ IntToStr(Exch.NeftPrice);
    ExMonthZemlLabel.Caption:='Зм  '+ IntToStr(Exch.ZemlyaPrice);
    {Начальный капитал}
    MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
    {Процент под кредит}
    CreditLabel.Caption:='Процент под кредит '+IntToStr(Inf.CreditPrc)+'%';
    {Процент под долг}
    DolgLabel.Caption:='Процент под долг   '+IntToStr(Inf.DolgPrc)+'%';
    {Процент платы за дом}
    PlDomLabel.Caption:='Плата за дом    '+IntToStr(Inf.DomPrc)+'%';
    {Процент платы за землю}
    PlZemlLabel.Caption:='Плата за землю  '+IntToStr(Inf.ZemlyaPrc)+'%';
    {Присвоение начальной цены на нефть(Биржа)}
    BuyNeftLabel.Caption:='Нефть     '+IntToStr(Exch.NeftPrice)+
      '     Гроблей(я) за баррель.';
    {Присвоение начальной цены на землю(Биржа)}
    BuyZemlLabel.Caption:='Земля     '+IntToStr(Exch.ZemlyaPrice)+
      '     Гроблей(я) за акр.';
    {Присвоение начального количества нефти(Хозяйство)}
    MyNeftLabel.Caption:='Нефть     '+IntToStr(HouseInf.NeftNum)+
      '     баррелей.';
    {Присвоение начального количества земли(Хозяйство)}
    MyZemlyaLabel.Caption:='Земля     '+IntToStr(HouseInf.ZemlyaNum)+
      '     акров.';
    {Присвоение начальной цены на дома(Рынок)}
    HouseLabel1.Caption:='1 - комн.     -  '+IntToStr(HousePr.Price1);
    HouseLabel2.Caption:='2 - комн.     -  '+IntToStr(HousePr.Price2);
    HouseLabel3.Caption:='3 - комн.     -  '+IntToStr(HousePr.Price3);
    HouseLabel4.Caption:='4 - комн.     -  '+IntToStr(HousePr.Price4);
    HouseLabel5.Caption:='5 - комн.     -  '+IntToStr(HousePr.Price5);
    HouseLabel6.Caption:='6 - комн.     -  '+IntToStr(HousePr.Price6);
    HouseLabel7.Caption:='7 - комн.     -  '+IntToStr(HousePr.Price7);
    {Присвоение начальной цены на автомобили(Рынок)}
    AvtoLabel1.Caption:='ВАЗ - 2106    -  '+IntToStr(AvtoPr.Price1);
    AvtoLabel2.Caption:='ВАЗ - 2109    -  '+IntToStr(AvtoPr.Price2);
    AvtoLabel3.Caption:='Renault       -  '+IntToStr(AvtoPr.Price3);
    AvtoLabel4.Caption:='Ford          -  '+IntToStr(AvtoPr.Price4);
    AvtoLabel5.Caption:='Opel          -  '+IntToStr(AvtoPr.Price5);
    AvtoLabel6.Caption:='Mercedes-320  -  '+IntToStr(AvtoPr.Price6);
    AvtoLabel7.Caption:='Mercedes-600  -  '+IntToStr(AvtoPr.Price7);
    {Запись дома(Хозяйство)}
    RandomHouse:=random(7);
    case RandomHouse of
      0: begin
           MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel1.Caption,1,16)+
           IntToStr(HousePr.Price1)+'   Гроблей(я).';
           HouseInf.DomPrice:=HousePr.Price1;
         end;
      1: begin
           MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel2.Caption,1,16)+
           IntToStr(HousePr.Price2)+'   Гроблей(я).';
           HouseInf.DomPrice:=HousePr.Price2;
         end;
      2: begin
           MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel3.Caption,1,16)+
           IntToStr(HousePr.Price3)+'   Гроблей(я).';
           HouseInf.DomPrice:=HousePr.Price3;
         end;
      3: begin
           MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel4.Caption,1,16)+
           IntToStr(HousePr.Price4)+'   Гроблей(я).';
           HouseInf.DomPrice:=HousePr.Price4;
         end;
      4: begin
           MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel5.Caption,1,16)+
           IntToStr(HousePr.Price5)+'   Гроблей(я).';
           HouseInf.DomPrice:=HousePr.Price5;
         end;
      5: begin
           MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel6.Caption,1,16)+
           IntToStr(HousePr.Price6)+'   Гроблей(я).';
           HouseInf.DomPrice:=HousePr.Price6;
         end;
      6: begin
           MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel7.Caption,1,16)+
           IntToStr(HousePr.Price7)+'   Гроблей(я).';
           HouseInf.DomPrice:=HousePr.Price7;
         end;
    end;
    {Запись марки автомобиля(Хозяйство)}
    RandomAvto:=random(7);
    case RandomAvto of
      0: begin
           MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel1.Caption,1,17)+
           IntToStr(AvtoPr.Price1)+'   Гроблей(я).';
           HouseInf.AvtoPrice:=AvtoPr.Price1;
         end;
      1: begin
           MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel2.Caption,1,17)+
           IntToStr(AvtoPr.Price2)+'   Гроблей(я).';
           HouseInf.AvtoPrice:=AvtoPr.Price2;
         end;
      2: begin
           MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel3.Caption,1,17)+
           IntToStr(AvtoPr.Price3)+'   Гроблей(я).';
           HouseInf.AvtoPrice:=AvtoPr.Price3;
         end;
      3: begin
           MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel4.Caption,1,17)+
           IntToStr(AvtoPr.Price4)+'   Гроблей(я).';
           HouseInf.AvtoPrice:=AvtoPr.Price4;
         end;
      4: begin
           MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel5.Caption,1,17)+
           IntToStr(AvtoPr.Price5)+'   Гроблей(я).';
           HouseInf.AvtoPrice:=AvtoPr.Price5;
         end;
      5: begin
           MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel6.Caption,1,17)+
           IntToStr(AvtoPr.Price6)+'   Гроблей(я).';
           HouseInf.AvtoPrice:=AvtoPr.Price6;
         end;
      6: begin
           MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel7.Caption,1,17)+
           IntToStr(AvtoPr.Price7)+'   Гроблей(я).';
           HouseInf.AvtoPrice:=AvtoPr.Price7;
         end;
    end;
    {Нефть на отопление дома(Секретарь)}
    SecInfLabel.Caption:='На отопление дома в этом месяце необходимо '+
      IntToStr(Secr.Neft)+' баррелей нефти.';
    {Ваш день рождения(Секретарь)}
    case Secr.Birth_Month of
      1: MonthTemp:=' Января';
      2: MonthTemp:=' Февраля';
      3: MonthTemp:=' Марта';
      4: MonthTemp:=' Апреля';
      5: MonthTemp:=' Мая';
      6: MonthTemp:=' Июня';
      7: MonthTemp:=' Июля';
      8: MonthTemp:=' Августа';
      9: MonthTemp:=' Сентября';
      10: MonthTemp:=' Октября';
      11: MonthTemp:=' Ноября';
      12: MonthTemp:=' Декабря';
    end;
    BirthLabel.Caption:='Ваш день рождения '+IntToStr(Secr.Birth_Day)+MonthTemp;
    Show;
  end;
  RegForm.Close;
  FirstForm.Hide;
end;

procedure TRegForm.FormShow(Sender: TObject);
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
    CaptionB := 'Регистрация';
    Gradient := True;
    ShowStdCaption:=False;
  end;
end;

end.
