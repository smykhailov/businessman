unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, SherPnl, Menus, RxMenus, lmdctrl, lmdextcS, SherBvl,
  lmdstdcS, StdCtrls, Buttons, lmdbtn, sherline, RXSlider, sherfrm, lmdmmS,
  Animate, GIFCtrl, RXCtrls, RXShell, IniFiles, lmdclass, lmdnonvS, lmddlgS,
  AppEvent, CoolMenu;

type
  TMainForm = class(TForm)
    GameControl: TPageControl;
    Information: TTabSheet;
    BankTab: TTabSheet;
    Exchange: TTabSheet;
    House: TTabSheet;
    Market: TTabSheet;
    Secretary: TTabSheet;
    Timer: TTimer;
    DatePanel: TPanel;
    PercentPanel: TPanel;
    MoneyPanel: TPanel;
    DateLabel: TLMDSimpleLabel;
    DateBevel: TSherlockBevel;
    DayLabel: TLMDSimpleLabel;
    MonthLabel: TLMDSimpleLabel;
    YearLabel: TLMDSimpleLabel;
    CreditBevel: TSherlockBevel;
    MoneyBevel: TSherlockBevel;
    PercentBevel: TSherlockBevel;
    CreditLabel: TLMDSimpleLabel;
    DolgLabel: TLMDSimpleLabel;
    MoneyLabel: TLMDSimpleLabel;
    YouLabel: TLMDSimpleLabel;
    ForYouLabel: TLMDSimpleLabel;
    PlDomLabel: TLMDSimpleLabel;
    PlZemlLabel: TLMDSimpleLabel;
    WelcomeLabel: TLMDSimpleLabel;
    BankPanel: TPanel;
    VkladGroupBox: TGroupBox;
    CreditGroupBox: TGroupBox;
    VkladLabel1: TLMDSimpleLabel;
    CreditLabel1: TLMDSimpleLabel;
    DatVzatLabel: TLMDSimpleLabel;
    GiveButton1: TLMDOfficeButton;
    TakeButton1: TLMDOfficeButton;
    WelcomeToExLabel: TLMDSimpleLabel;
    ExchangePanel: TPanel;
    ExchangeBevel1: TSherlockBevel;
    ExchangeBevel2: TSherlockBevel;
    ExMonthLabel: TLMDSimpleLabel;
    ExMonthNeftLabel: TLMDSimpleLabel;
    ExMonthZemlLabel: TLMDSimpleLabel;
    SherlockLine1: TSherlockLine;
    BuyNeftLabel: TLMDSimpleLabel;
    BuyZemlLabel: TLMDSimpleLabel;
    BuyNeftButton: TLMDOfficeButton;
    BuyZemlButton: TLMDOfficeButton;
    HomePanel: TPanel;
    HomeLabel: TLMDSimpleLabel;
    HouseBevel1: TSherlockBevel;
    HouseBevel2: TSherlockBevel;
    MyNeftLabel: TLMDSimpleLabel;
    MyZemlyaLabel: TLMDSimpleLabel;
    MyHouseLabel: TLMDSimpleLabel;
    MyAvtoLabel: TLMDSimpleLabel;
    SherlockLine2: TSherlockLine;
    SellDomButton: TLMDOfficeButton;
    SellAvtoButton: TLMDOfficeButton;
    WelcomeToMarcetLabel: TLMDSimpleLabel;
    HousePanel: TPanel;
    AvtoPanel: TPanel;
    HouseMarcetBevel1: TSherlockBevel;
    HouseMarcetBevel2: TSherlockBevel;
    AvtoMarcetBevel1: TSherlockBevel;
    AvtoMarcetBevel2: TSherlockBevel;
    MarketHouseLabel: TLMDSimpleLabel;
    NameHLabel: TLMDSimpleLabel;
    PriceHLabel: TLMDSimpleLabel;
    HouseLabel1: TLMDSimpleLabel;
    HouseLabel2: TLMDSimpleLabel;
    HouseLabel3: TLMDSimpleLabel;
    HouseLabel4: TLMDSimpleLabel;
    HouseLabel5: TLMDSimpleLabel;
    HouseLabel6: TLMDSimpleLabel;
    HouseLabel7: TLMDSimpleLabel;
    MarketAvtoLabel: TLMDSimpleLabel;
    NameALabel: TLMDSimpleLabel;
    PriceALabel: TLMDSimpleLabel;
    AvtoLabel1: TLMDSimpleLabel;
    AvtoLabel2: TLMDSimpleLabel;
    AvtoLabel3: TLMDSimpleLabel;
    AvtoLabel4: TLMDSimpleLabel;
    AvtoLabel5: TLMDSimpleLabel;
    AvtoLabel6: TLMDSimpleLabel;
    AvtoLabel7: TLMDSimpleLabel;
    HelloBossLabel: TLMDSimpleLabel;
    SecrInfPanel: TPanel;
    SecrMoneyPanel: TPanel;
    SecretarBevel1: TSherlockBevel;
    SecretarBevel2: TSherlockBevel;
    SecretarBevel3: TSherlockBevel;
    SecretarBevel4: TSherlockBevel;
    SecInfLabel: TLMDSimpleLabel;
    BirthLabel: TLMDSimpleLabel;
    ReturnMoneyLabel1: TLMDSimpleLabel;
    YouMustReturnMoneyLabel1: TLMDSimpleLabel;
    TempLabel: TLabel;
    StatusPnl: TStatusBar;
    Panel1: TPanel;
    SherlockBevel1: TSherlockBevel;
    LMD3DCaptionButton1: TLMD3DCaptionButton;
    Close3dButton: TLMD3DCaptionButton;
    SaveDlg: TSaveDialog;
    SecretPanel1: TSecretPanel;
    Panel2: TPanel;
    RxGIFAnimator1: TRxGIFAnimator;
    LMDShapeHint1: TLMDShapeHint;
    SellNeftButton: TLMDOfficeButton;
    SellZemlButton: TLMDOfficeButton;
    RxTrayIcon: TRxTrayIcon;
    GameMenu: TMainMenu;
    CoolMenu1: TCoolMenu;
    GameItem: TCoolMenuItem;
    OptionItem: TCoolMenuItem;
    HelpItem: TCoolMenuItem;
    NewItem: TCoolMenuItem;
    SaveItem: TCoolMenuItem;
    ExitItem: TCoolMenuItem;
    ContentItem: TCoolMenuItem;
    AboutItem: TCoolMenuItem;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TimerTimer(Sender: TObject);
    procedure GameControlChange(Sender: TObject);
    procedure BuyNeftButtonClick(Sender: TObject);
    procedure BuyZemlButtonClick(Sender: TObject);
    procedure SellNeftButtonClick(Sender: TObject);
    procedure SellZemlButtonClick(Sender: TObject);
    procedure SellDomButtonClick(Sender: TObject);
    procedure SellAvtoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HouseLabel1Click(Sender: TObject);
    procedure HouseLabel2Click(Sender: TObject);
    procedure HouseLabel3Click(Sender: TObject);
    procedure HouseLabel4Click(Sender: TObject);
    procedure HouseLabel5Click(Sender: TObject);
    procedure HouseLabel6Click(Sender: TObject);
    procedure HouseLabel7Click(Sender: TObject);
    procedure AvtoLabel1Click(Sender: TObject);
    procedure AvtoLabel2Click(Sender: TObject);
    procedure AvtoLabel3Click(Sender: TObject);
    procedure AvtoLabel4Click(Sender: TObject);
    procedure AvtoLabel5Click(Sender: TObject);
    procedure AvtoLabel6Click(Sender: TObject);
    procedure AvtoLabel7Click(Sender: TObject);
    procedure GiveButton1Click(Sender: TObject);
    procedure TakeButton1Click(Sender: TObject);
    procedure SaveGameClick(Sender: TObject);
    procedure SaveDlgClose(Sender: TObject);
    procedure NewClick(Sender: TObject);
    procedure ExitClick(Sender: TObject);
    procedure Close3dButtonClick(Sender: TObject);
    procedure OptionClick(Sender: TObject);
    procedure RxTrayIconDblClick(Sender: TObject);
    procedure LMD3DCaptionButton1Click(Sender: TObject);
    procedure ContentClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AboutClick(Sender: TObject);
  private
    { Private declarations }
    procedure NewYear;
    procedure NewPrice;
    procedure Nalogi;
    procedure OtoplenieDoma;
    procedure Hospital(const Msg: string);
    procedure BirthDay;
    procedure HozStrah;
    procedure BankMoney;
    procedure BigerMoney;
    procedure NoMoney;
    procedure Death(name: string; Age: byte);
    procedure HintPanel(Sender: TObject);
  public
    { Public declarations }
  end;

type
  Soobshcheniya = record   // Данные о закладке "Сведения"
    Money:      LongInt;   // Ваш капитал
    CreditPrc:  byte;      // Процент под кредит
    DolgPrc:    byte;      // Процент под долг
    DomPrc:     byte;      // Процент платы за дом
    ZemlyaPrc:  byte;      // Процент платы за землю
    YouMust:    Cardinal;  // Деньги которые Вы должны банку
    ForYouMust: Cardinal;  // Деньги которые банк должен Вам
  end;

type
  Banks = record                 // Данные о закладке "Банк"
    Credit1:       Cardinal;     // кредит
    Dolg1:         Cardinal;     // долг
    Bankrot_Day:   byte;
    Bankrot_Month: byte;
    Bankrot_Year:  word;
  end;

type
  Birzha = record          // Данные о закладке "Биржа"
    NeftPrice:   byte;     // Цена на нефть
    ZemlyaPrice: word;     // Цена на землю
  end;

type
  Hozyaystvo = record      // Данные о закладке "Хозяйство"
    NeftNum:   LongInt;   // Количество нефти
    ZemlyaNum: LongInt;   // Количество земли
    DomPrice:  word;       // Стоимость Вашего дома
    AvtoPrice: word;       // Стоимость Вашего автомобиля
  end;

type
  Runok = record           // Данные о закладке "Рынок"
    Price1: word;          //
    Price2: word;          //
    Price3: word;          //
    Price4: word;          // Цены на товары
    Price5: word;          //
    Price6: word;          //
    Price7: word;          //
  end;

type
  Secretar = record
    Neft:          byte;
    Birth_Day:     byte;
    Birth_Month:   byte;
    Dolg1_Day:     byte;
    Dolg1_Month:   byte;
    Dolg1_Year:    word;
    Credit1_Day:   byte;
    Credit1_Month: byte;
    Credit1_Year:  word;
  end;

type
  Hospital = record
    DayLech:      byte;
    DayVupiski:   byte;
    MonthLech:    byte;
    MonthVupiski: byte;
    YearLech:     word;
    YearVupiski:  word;
  end;

type
  Strahovanie = record
    SDay:       byte;
    SMonth:     byte;
    SYear:      word;
    SStrahovka: Boolean;
  end;

type
  SaveMyGame = record
    Day:         byte;
    Month:       byte;
    MonthString: string[10];
    Year:        word;
    Inform:      Soobshcheniya;

    BBank:        Banks;
    BCredLabCap:  string[100];
    BDolgLabCap:  string[100];
    BCredButEnab: boolean;
    BDolgButEnab: boolean;

    Exchange:     Birzha;
    ExMnNfLabCap: string[100];
    ExMnZmLabCap: string[100];

    HouseInform: Hozyaystvo;
    HHsLabCap:   string[100];
    HAvLabCap:   string[100];
    HSlDmBtEnb:  boolean;
    HSlAvBtEnb:  boolean;

    RHousePrice: Runok;
    RAvtoPrice:  Runok;

    SSecr:          Secretar;
    RetMonLabCap:   string[100];
    YMRetMonLabCap: string[100];

    Hospit: Hospital;

    StrahDom:  Strahovanie;
    StrahAvto: Strahovanie;
  end;

var
  MainForm:        TMainForm;
  Inf:             Soobshcheniya;
  Bank:            Banks;
  Exch:            Birzha;
  HouseInf:        Hozyaystvo;
  HousePr, AvtoPr: Runok;
  Secr:            Secretar;
  Hosp:            Hospital;
  PriceNeft:       array [0..11] of byte;
  PriceZeml:       array [0..11] of word;
  StrahovkaDoma:   Strahovanie;
  StrahovkaAvto:   Strahovanie;
  Opt:             TIniFile;

implementation

uses First, BuyNeft, BuyZeml, SellNeft, SellZeml, NewYear, GiveMoney,
  TakeMoney, Registration, Options, About;

{$R *.DFM}

procedure TMainForm.TimerTimer(Sender: TObject);
var
  Month: string[15];
begin
  randomize;
  {Число}
  DayLabel.Caption:=IntToStr(StrToInt(DayLabel.Caption)+1);
  case StrToInt(TempLabel.Caption) of
    1,3,5,7,8,10,12: Month:='31';       // Количество дней в
    2: Month:='28';                     // определенном месяце
    4,6,9,11: Month:='30';
  end;
  StatusPnl.Panels[0].Text:=DayLabel.Caption+' '+MonthLabel.Caption+' '+YearLabel.Caption;
  {А вдруг у нас уже следующий месяц}
  if DayLabel.Caption = Month then
  begin
    OtoplenieDoma;
    Nalogi;  // Ах налоги Вы налоги.
    {Ура!!! Первое число}
    DayLabel.Caption:='1';
    {Прибавим ка еще один месяц}
    TempLabel.Caption:=IntToStr(StrToInt(TempLabel.Caption)+1);
    case StrToInt(TempLabel.Caption) of
      1: MonthLabel.Caption:='Января';
      2: MonthLabel.Caption:='Февраля';
      3: MonthLabel.Caption:='Марта';
      4: MonthLabel.Caption:='Апреля';
      5: MonthLabel.Caption:='Мая';
      6: MonthLabel.Caption:='Июня';
      7: MonthLabel.Caption:='Июля';
      8: MonthLabel.Caption:='Августа';
      9: MonthLabel.Caption:='Сентября';
      10: MonthLabel.Caption:='Октября';
      11: MonthLabel.Caption:='Ноября';
      12: MonthLabel.Caption:='Декабря';
    end;
    {А может уже и новый год}
    if TempLabel.Caption = '13' then
    begin
      {И пошел еще один год}
      NewYear;
      YearLabel.Caption:=IntToStr(StrToInt(YearLabel.Caption)+1);
      TempLabel.Caption:='1';
      MonthLabel.Caption:='Января';
    end;
    {Новые цены в этом месяце}
    NewPrice;
  end;
  Death(RegForm.RegEdit.Text, Round(RegForm.AgeSpinEdit.Value));
  HozStrah;
  BirthDay;
  BankMoney;
  Hospital('В ы   з а б о л е л и   и   п о п а л и   в   б о л ь н и ц у .');
end;

procedure TMainForm.NoMoney;
begin
  if (Inf.Money <= 0) then
  begin
    if MessageDlg(RegForm.RegEdit.Text+'   у   В а с   з а к о н ч и л и с ь   д е н ь г и'
      +#10+#13+'и   В ы   у м е р л и   о т   г о л о д а ! ! !'+#10+#13+
      'Б у д е м   и г р а т ь   е щ е ?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
    begin
      Hide;
      RegForm.Show;
    end
    else
    begin
      Close;
      FirstForm.Show;
    end;
  end;
end;

procedure TMainForm.Death(name: string; Age: byte);
var
  Death_Day:   byte;
  Death_Month: byte;
  Death_Year:  word;
begin
  randomize;
  Death_Day:=random(20)+3;
  Death_Month:=random(10)+1;
  Death_Year:=random(70-Age)+2020;
  if (Death_Day = StrToInt(DayLabel.Caption))
     and (Death_Month = StrToInt(TempLabel.Caption))
     and (Death_Year = StrToInt(YearLabel.Caption)) then
  begin
    Timer.Enabled:=False;
    ShowMessage('Н у   в о т   В ы   и   у м е р л и .');
    if (MessageDlg(name+',  б у д е т е   и г р а т ь   е щ е ?',mtConfirmation, [mbYes, mbNo],0) = mrYes) then
    begin
      Hide;
      RegForm.Show;
    end
    else
    begin
      Close;
      FirstForm.Show;
    end;
  end;
end;

procedure TMainForm.BankMoney;
var
  BankrotPrc: byte;
begin
  {Возврат долга}
  if (Secr.Dolg1_Day = StrToInt(DayLabel.Caption))
     and (Secr.Dolg1_Month = StrToInt(TempLabel.Caption))
     and (Secr.Dolg1_Year = StrToInt(YearLabel.Caption)) then
  begin
    Inf.Money:=Inf.Money+Inf.ForYouMust;
    Timer.Enabled:=False;
    ShowMessage('  С е г о д н я   б а н к   " S l y   F o x "'+
       #10+#13+'в о з в р а щ а е т   В а м   д е н ь г и .');
    Timer.Enabled:=True;
    MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
    ForYouLabel.Caption:='Вам должны   0  Гроблей(я).';
    VkladLabel1.Caption:='Деньги Вы еще не давали.';
    ReturnMoneyLabel1.Caption:='Денег в долг Вы не давали.';
    GiveButton1.Enabled:=True;
    Inf.ForYouMust:=0;
    with Secr do
    begin
      Dolg1_Day:=0;
      Dolg1_Month:=0;
      Dolg1_Year:=0;
    end;
  end;
  {Банкротство банка}
  if (Bank.Bankrot_Day = StrToInt(DayLabel.Caption))
     and (Bank.Bankrot_Month = StrToInt(TempLabel.Caption))
     and (Bank.Bankrot_Year = StrToInt(YearLabel.Caption)) then
  begin
    BankrotPrc:=random(50)+25;
    Inf.Money:=Inf.Money + ((Bank.Dolg1 div 100)*BankrotPrc);
    Timer.Enabled:=False;
    ShowMessage('                  Б а н к   "S l y   F o x"   о б а н к р о т и л с я ! ! !'+
        #10+#13+'М ы   м о ж е м   в ы п л а т и т ь   В а м   '+IntToStr(BankrotPrc)+
                '%   В а ш е г о   в к л а д а .');
    Timer.Enabled:=True;
    MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
    ForYouLabel.Caption:='Вам должны   0  Гроблей(я).';
    VkladLabel1.Caption:='Деньги Вы еще не давали.';
    ReturnMoneyLabel1.Caption:='Денег в долг Вы не давали.';
    GiveButton1.Enabled:=True;
    Inf.ForYouMust:=0;
    with Secr do
    begin
      Dolg1_Day:=0;
      Dolg1_Month:=0;
      Dolg1_Year:=0;
    end;
  end;
  {Возврат кредита}
  if (Secr.Credit1_Day = StrToInt(DayLabel.Caption))
     and (Secr.Credit1_Month = StrToInt(TempLabel.Caption))
     and (Secr.Credit1_Year = StrToInt(YearLabel.Caption)) then
  begin
    Inf.Money:=Inf.Money-Inf.YouMust;
    Timer.Enabled:=False;
    NoMoney;
    ShowMessage('С е г о д н я   В ы   д о л ж н ы   в е р н у т ь'+
       #10+#13+'       д е н ь г и   в   б а н к   "S l y   F o x " .');
    Timer.Enabled:=True;
    MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
    YouLabel.Caption:='Вы должны    0  Гроблей(я).';
    CreditLabel1.Caption:='Кредиты Вы еще не брали.';
    YouMustReturnMoneyLabel1.Caption:='Кредит в банке Вы не брали.';
    TakeButton1.Enabled:=True;
    Inf.YouMust:=0;
    with Secr do
    begin
      Credit1_Day:=0;
      Credit1_Month:=0;
      Credit1_Year:=0;
    end;
  end;
end;

procedure TMainForm.HozStrah;
var
  StrahPrc: word;
begin
  randomize;
  if (StrahovkaDoma.SDay = StrToInt(DayLabel.Caption))
     and (StrahovkaDoma.SMonth = StrToInt(TempLabel.Caption))
     and (StrahovkaDoma.SYear = StrToInt(YearLabel.Caption))
     and (StrahovkaDoma.SStrahovka = True)and(HouseInf.DomPrice<>0) then
  begin
    StrahPrc:=random(35)+75;
    Inf.Money:=Inf.Money+((HouseInf.DomPrice div 100)*StrahPrc);
    Timer.Enabled:=False;
    ShowMessage('            В а ш   д о м   с г о р е л   д о т л а ! ! !' +
      #10+#13+  '                С т р а х о в а я   к о м п а н и я'+
      #10+#13+  'в ы п л а т и т   В а м   '+IntToStr(StrahPrc)+
      '%   е г о   с т о и м о с т и .');
    Timer.Enabled:=True;
    MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
    HouseInf.DomPrice:=0;
    MyHouseLabel.Caption:='У Вас нету дома!';
    Secr.Neft:=0;
    SecInfLabel.Caption:='На отопление дома нефти не надо, так как у Вас его нету.';
    SellDomButton.Enabled:=False;
    with Hosp do
    begin
      DayLech:=StrToInt(DayLabel.Caption)+(random(3)+2);
      if DayLech >= 31 then
        DayLech:=DayLech-8;
      MonthLech:=StrToInt(TempLabel.Caption);
      YearLech:=StrToInt(YearLabel.Caption);
    end
  end;
  if (StrahovkaDoma.SDay = StrToInt(DayLabel.Caption))
     and (StrahovkaDoma.SMonth = StrToInt(TempLabel.Caption))
     and (StrahovkaDoma.SYear = StrToInt(YearLabel.Caption))
     and (StrahovkaDoma.SStrahovka = False)and(HouseInf.DomPrice<>0) then
  begin
    Timer.Enabled:=False;
    ShowMessage('М ы   р е ш и л и   п е р е д а т ь   В а ш   д о м' +
      #10 + #13+'    в е т е р а н а м   п е р е с т р о й к и ! ! !');
    Timer.Enabled:=True;
    HouseInf.DomPrice:=0;
    MyHouseLabel.Caption:='У Вас нету дома!';
    Secr.Neft:=0;
    SecInfLabel.Caption:='На отопление дома нефти не надо, так как у Вас его нету.';
    SellDomButton.Enabled:=False;
    with Hosp do
    begin
      DayLech:=StrToInt(DayLabel.Caption)+(random(3)+2);
      if DayLech >= 31 then
        DayLech:=DayLech-8;
      MonthLech:=StrToInt(TempLabel.Caption);
      YearLech:=StrToInt(YearLabel.Caption);
    end
  end;
  if (StrahovkaAvto.SDay = StrToInt(DayLabel.Caption))
     and (StrahovkaAvto.SMonth = StrToInt(TempLabel.Caption))
     and (StrahovkaAvto.SYear = StrToInt(YearLabel.Caption))
     and (StrahovkaAvto.SStrahovka = True)and(HouseInf.AvtoPrice<>0) then
  begin
    StrahPrc:=random(35)+75;
    Inf.Money:=Inf.Money+((HouseInf.DomPrice div 100)*StrahPrc);
    Timer.Enabled:=False;
    ShowMessage('        В а ш   а в т о м о б и л ь   с г о р е л   д о т л а ! ! !' +
      #10+#13+  '                С т р а х о в а я   к о м п а н и я'+
      #10+#13+  'в ы п л а т и т   В а м   '+IntToStr(StrahPrc)+
      '%   е г о   с т о и м о с т и .');
    Timer.Enabled:=True;
    MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
    HouseInf.AvtoPrice:=0;
    MyAvtoLabel.Caption:='У Вас нету автомобиля!';
    SellAvtoButton.Enabled:=False;
  end;
  if (StrahovkaAvto.SDay = StrToInt(DayLabel.Caption))
     and (StrahovkaAvto.SMonth = StrToInt(TempLabel.Caption))
     and (StrahovkaAvto.SYear = StrToInt(YearLabel.Caption))
     and (StrahovkaAvto.SStrahovka = False)and(HouseInf.AvtoPrice<>0) then
  begin
    Timer.Enabled:=False;
    ShowMessage('М ы   р е ш и л и   п е р е д а т ь   В а ш   а в т о м о б и л ь' +
      #10 + #13+'      в е т е р а н а м   п е р е с т р о й к и ! ! !');
    Timer.Enabled:=True;
    HouseInf.AvtoPrice:=0;
    MyAvtoLabel.Caption:='У Вас нету автомобиля!';
    SellAvtoButton.Enabled:=False;
  end;
end;

procedure TMainForm.NewYear;
begin
  PriceNeft[0]:=StrToInt(Copy(ExMonthNeftLabel.Caption,5,2));
  PriceNeft[1]:=StrToInt(Copy(ExMonthNeftLabel.Caption,9,2));
  PriceNeft[2]:=StrToInt(Copy(ExMonthNeftLabel.Caption,14,2));
  PriceNeft[3]:=StrToInt(Copy(ExMonthNeftLabel.Caption,19,2));
  PriceNeft[4]:=StrToInt(Copy(ExMonthNeftLabel.Caption,24,2));
  PriceNeft[5]:=StrToInt(Copy(ExMonthNeftLabel.Caption,28,2));
  PriceNeft[6]:=StrToInt(Copy(ExMonthNeftLabel.Caption,33,2));
  PriceNeft[7]:=StrToInt(Copy(ExMonthNeftLabel.Caption,39,2));
  PriceNeft[8]:=StrToInt(Copy(ExMonthNeftLabel.Caption,44,2));
  PriceNeft[9]:=StrToInt(Copy(ExMonthNeftLabel.Caption,49,2));
  PriceNeft[10]:=StrToInt(Copy(ExMonthNeftLabel.Caption,54,2));
  PriceNeft[11]:=Exch.NeftPrice;
  PriceZeml[0]:=StrToInt(Copy(ExMonthZemlLabel.Caption,5,3));
  PriceZeml[1]:=StrToInt(Copy(ExMonthZemlLabel.Caption,9,3));
  PriceZeml[2]:=StrToInt(Copy(ExMonthZemlLabel.Caption,14,3));
  PriceZeml[3]:=StrToInt(Copy(ExMonthZemlLabel.Caption,19,3));
  PriceZeml[4]:=StrToInt(Copy(ExMonthZemlLabel.Caption,24,3));
  PriceZeml[5]:=StrToInt(Copy(ExMonthZemlLabel.Caption,28,3));
  PriceZeml[6]:=StrToInt(Copy(ExMonthZemlLabel.Caption,33,3));
  PriceZeml[7]:=StrToInt(Copy(ExMonthZemlLabel.Caption,39,3));
  PriceZeml[8]:=StrToInt(Copy(ExMonthZemlLabel.Caption,44,3));
  PriceZeml[9]:=StrToInt(Copy(ExMonthZemlLabel.Caption,49,3));
  PriceZeml[10]:=StrToInt(Copy(ExMonthZemlLabel.Caption,54,3));
  PriceZeml[11]:=Exch.ZemlyaPrice;
  ExMonthNeftLabel.Caption:='Нф';
  ExMonthZemlLabel.Caption:='Зм ';
  Timer.Enabled:=False;
  with NewYearForm do
  begin
    Position:=poScreenCenter;
    ShowModal;
  end;
end;

procedure TMainForm.BirthDay;
var
  present: Cardinal;
  s: string[2];
begin
  randomize;
  if (Secr.Birth_Day = StrToInt(DayLabel.Caption))
     and (Secr.Birth_Month = StrToInt(TempLabel.Caption)) then
  begin
    S:=IntToStr(StrToInt(Copy(MainForm.Caption,10,2))+1);
    present:=random(49999)+50000;
    Inf.Money:=Inf.Money+present;
    Timer.Enabled:=False;
    ShowMessage('У   В а с   с е г о д н я   Д е н ь   р о ж д е н и я ! ! !'+
      #10 + #13+'        Д р у з ь я   п р е п о д н е с л и   В а м'+
      #10 + #13+'        п о д а р о к   ' +  IntToStr(present)+'   Г р о б л е й ( я ) .');
    MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
    Caption:='Возраст: '+S+' лет.';
    Timer.Enabled:=True;
  end;
end;

procedure TMainForm.BigerMoney;
begin
  Inf.ForYouMust:=Inf.ForYouMust+((Inf.ForYouMust div 100)*Inf.DolgPrc);
  ForYouLabel.Caption:='Вам должны   '+IntToStr(Inf.ForYouMust)+'  Гроблей(я).';
  Inf.YouMust:=Inf.YouMust+((Inf.YouMust div 100)*Inf.CreditPrc);
  YouLabel.Caption:='Вы должны    '+IntToStr(Inf.YouMust)+'  Гроблей(я).';
end;

procedure TMainForm.NewPrice;
begin
  BigerMoney;
  with Inf do
  begin
    CreditPrc:=random(6)+6;
    DolgPrc:=random(6)+6;        // Новые проценты на
    DomPrc:=random(4)+4;         // закладке "Сообщения"
    ZemlyaPrc:=random(4)+4;
  end;
  with Exch do
  begin
    NeftPrice:=random(18)+17;        // Новые цены на
    ZemlyaPrice:=random(350)+180;    // закладке "Биржа"
  end;
  with HousePr do
  begin
    Price1:=random(2500)+8500;
    Price2:=random(2500)+10000;
    Price3:=random(2500)+11500;      // Новые цены на
    Price4:=random(2500)+13000;      // дома на "Рынке"
    Price5:=random(2500)+14500;
    Price6:=random(2500)+16000;
    Price7:=random(2500)+17500;
  end;
  with AvtoPr do
  begin
    Price1:=random(1500)+5500;
    Price2:=random(1500)+6500;
    Price3:=random(1500)+7500;        // Новые цены на
    Price4:=random(1500)+8500;        // авто. на "Рынке"
    Price5:=random(1500)+9500;
    Price6:=random(1500)+10500;
    Price7:=random(1500)+11500;
  end;
  with StrahovkaDoma do
  begin
    SDay:=random(25)+2;
    SMonth:=random(11)+1;
    SYear:=StrToInt(YearLabel.Caption);
  end;
  with StrahovkaAvto do
  begin
    SDay:=random(25)+2;
    SMonth:=Random(11)+1;
    SYear:=StrToInt(YearLabel.Caption);
  end;
  case StrToInt(TempLabel.Caption) of
    1,2,6,12,13:
       begin
         ExMonthNeftLabel.Caption:=ExMonthNeftLabel.Caption + '  '
           + IntToStr(Exch.NeftPrice);
         ExMonthZemlLabel.Caption:=ExMonthZemlLabel.Caption + ' '
           + IntToStr(Exch.ZemlyaPrice);
       end;
    8: begin
         ExMonthNeftLabel.Caption:=ExMonthNeftLabel.Caption + '    '
           + IntToStr(Exch.NeftPrice);
         ExMonthZemlLabel.Caption:=ExMonthZemlLabel.Caption + '   '
           + IntToStr(Exch.ZemlyaPrice);
       end;
  else
    ExMonthNeftLabel.Caption:=ExMonthNeftLabel.Caption + '   '
      + IntToStr(Exch.NeftPrice);
    ExMonthZemlLabel.Caption:=ExMonthZemlLabel.Caption + '  '
       + IntToStr(Exch.ZemlyaPrice);
  end;
  Secr.Neft:=random(7)+5;
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
  {Нефть на отопление дома(Секретарь)}
  SecInfLabel.Caption:='На отопление дома в этом месяце необходимо '+
    IntToStr(Secr.Neft)+' баррелей нефти.';
end;
{Оплата долгов}
procedure TMainForm.Nalogi;
var
  NalogDom, NalogZeml: Cardinal;
begin
  Timer.Enabled:=False;
  NalogDom:=(HouseInf.DomPrice div 100)*Inf.DomPrc;
  NalogZeml:=((HouseInf.ZemlyaNum*Exch.ZemlyaPrice) div 100)*Inf.ZemlyaPrc;
  Inf.Money:=Inf.Money - NalogDom - NalogZeml;
  ShowMessage('П л а т а   з а   д о м         ' + IntToStr(NalogDom) +
    '   Г р о б л е й ( я ) .' + #10 + #13 + 'П л а т а   з а   з е м л ю   '
    +IntToStr(NalogZeml) + '   Г р о б л е й ( я ) .');
  Timer.Enabled:=True;
  MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
end;

procedure TMainForm.OtoplenieDoma;
begin
  randomize;
  if HouseInf.NeftNum > Secr.Neft then
  begin
    HouseInf.NeftNum:=HouseInf.NeftNum-Secr.Neft;
    MyNeftLabel.Caption:='Нефть     '+IntToStr(HouseInf.NeftNum)+
      '     баррелей.';
  end;
end;

procedure TMainForm.Hospital(const Msg: string);
var
  Lech: byte;
begin
  randomize;
  if (Hosp.DayLech = StrToInt(DayLabel.Caption))
     and (Hosp.MonthLech = StrToInt(TempLabel.Caption))
       and (Hosp.YearLech = StrToInt(YearLabel.Caption)) then
  begin
    Timer.Enabled:=False;
    ShowMessage(Msg);
    GameControl.Enabled:=False;
    Timer.Enabled:=True;
  end;
  Hosp.DayVupiski:=Hosp.DayLech;
  Hosp.MonthVupiski:=Hosp.MonthLech+1;
  Hosp.YearVupiski:=Hosp.YearLech;
  if Hosp.DayVupiski >= 28 then
    Hosp.DayVupiski:=Hosp.DayVupiski-3;
  if Hosp.MonthVupiski = 13 then
  begin
    Hosp.MonthVupiski:=1;
    Hosp.YearVupiski:=Hosp.YearVupiski+1;
  end;
  if (Hosp.DayVupiski = StrToInt(DayLabel.Caption))
     and (Hosp.MonthVupiski = StrToInt(TempLabel.Caption))
       and (Hosp.YearVupiski = StrToInt(YearLabel.Caption)) then
  begin
    Lech:=random(150)+100;
    Timer.Enabled:=False;
    ShowMessage('В а с   в ы п и с а л и   и з   б о л ь н и ц ы .'+
      #10+#13+ 'З а   л е ч е н и е   В ы   д о л ж н ы   '+
      IntToStr(Lech)+'   Г р о б л е й ( я ) .');
    GameControl.Enabled:=True;
    Timer.Enabled:=True;
    Inf.Money:=Inf.Money-Lech;
    NoMoney;
    MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
    with Hosp do
    begin
      DayLech:=StrToInt(DayLabel.Caption)+(random(3)+2);
      MonthLech:=StrToInt(TempLabel.Caption);
      YearLech:=StrToInt(YearLabel.Caption);
      DayVupiski:=0;
      MonthVupiski:=0;
      YearVupiski:=0;
    end;
  end;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=False;
  ExitClick(Sender);
end;

procedure TMainForm.GameControlChange(Sender: TObject);
begin
  {Часики остановитесь ка}
  if (GameControl.ActivePage<>Information) then
    Timer.Enabled:=False
  else
    Timer.Enabled:=True;
  {А вдруг нима машины}
  if ((GameControl.ActivePage=BankTab)or(GameControl.ActivePage=Exchange))
     and(HouseInf.AvtoPrice=0) then
  begin
    Timer.Enabled:=False;
    ShowMessage('   А   н а   ч е м   В ы   п о е д е т е ?'
       +#10+#13+'У   В а с   н е т   а в т о м о б и л я ! ! !');
    GameControl.ActivePage:=Information;
    Timer.Enabled:=True;
  end;
end;
{Купим немного нефти, что ли?}
procedure TMainForm.BuyNeftButtonClick(Sender: TObject);
begin
  BuyNeftForm.Position:=poScreenCenter;
  if Inf.Money > Exch.NeftPrice then   // А деньги то у нас есть?
    BuyNeftForm.ShowModal
  else
  begin
    ShowMessage('С  В а ш и м и  т о  д е н ь г а м и ? !');
    GameControl.ActivePage:=Information;
  end;
end;
{А может лучше земли?}
procedure TMainForm.BuyZemlButtonClick(Sender: TObject);
begin
  BuyZemlForm.Position:=poScreenCenter;
  if Inf.Money > Exch.ZemlyaPrice then  // А деньги то у нас есть?
    BuyZemlForm.ShowModal
  else
  begin
    ShowMessage('С  В а ш и м и  т о  д е н ь г а м и ? !');
    GameControl.ActivePage:=Information;
  end;
end;
{Давайте нефть мы продадим}
procedure TMainForm.SellNeftButtonClick(Sender: TObject);
begin
  SellNeftForm.Position:=poScreenCenter;
  if HouseInf.NeftNum > 0 then  // Дык, может нет у нас ее?
    SellNeftForm.ShowModal
  else
  begin
    ShowMessage('А  г д е  В ы  е е  в о з ь м е т е - т о ? !');
    SellNeftButton.Enabled:=False;
  end;
end;
{А может все же лучше землю?}
procedure TMainForm.SellZemlButtonClick(Sender: TObject);
begin
  SellZemlForm.Position:=poScreenCenter;
  if HouseInf.ZemlyaNum > 0 then  // Дык, может нет у нас ее?
    SellZemlForm.ShowModal
  else
  begin
    ShowMessage('А  г д е  В ы  е е  в о з ь м е т е - т о ? !');
    SellZemlButton.Enabled:=False;
  end;
end;
{Давайте дом мы продадим}
procedure TMainForm.SellDomButtonClick(Sender: TObject);
begin
  if MessageDlg('А    В ы    у в е р е н ы    ч т о' + #10 + #13 +
              'х о т и т е  с д е л а т ь  э т о ?', mtConfirmation, [mbYes, mbNo],0)
       = mrYes then
  begin
    Inf.Money:=Inf.Money + HouseInf.DomPrice;
    MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
    HouseInf.DomPrice:=0;
    MyHouseLabel.Caption:='У Вас нету дома!';
    Secr.Neft:=0;
    SecInfLabel.Caption:='На отопление дома нефти не надо, так как у Вас его нету.';
    Timer.Enabled:=True;
    GameControl.ActivePage:=Information;
    SellDomButton.Enabled:=False;
    with StrahovkaDoma do
    begin
      SDay:=0;
      SMonth:=0;
      SYear:=0;
    end;
    with Hosp do
    begin
      DayLech:=StrToInt(DayLabel.Caption)+(random(3)+2);
      if DayLech >= 31 then
        DayLech:=DayLech-8;
      MonthLech:=StrToInt(TempLabel.Caption);
      YearLech:=StrToInt(YearLabel.Caption);
    end
  end;
end;
{Да нет, давай машину}
procedure TMainForm.SellAvtoButtonClick(Sender: TObject);
begin
  if MessageDlg('А    В ы    у в е р е н ы    ч т о' + #10 + #13 +
              'х о т и т е  с д е л а т ь  э т о ?', mtConfirmation, [mbYes, mbNo],0)
       = mrYes then
  begin
    Inf.Money:=Inf.Money + HouseInf.AvtoPrice;
    MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
    HouseInf.AvtoPrice:=0;
    MyAvtoLabel.Caption:='У Вас нету автомобиля!';
    Timer.Enabled:=True;
    GameControl.ActivePage:=Information;
    SellAvtoButton.Enabled:=False;
    with StrahovkaAvto do
    begin
      SDay:=0;
      SMonth:=0;
      SYear:=0;
    end;
  end;
end;

procedure TMainForm.FormShow(Sender: TObject);
var
  Shf: TSherlockFrame;
begin
  RegForm.Hide;
  Opt:=TIniFile.Create('Bussiness.ini');
  with Opt do
  begin
    if (ReadBool('Options','Show Hint',True) = True) then
      MainForm.ShowHint:=True
    else
      MainForm.ShowHint:=False;
    if (ReadBool('Options','Tray Icon',True) = True) then
      MainForm.RxTrayIcon.Active:=True
    else
      MainForm.RxTrayIcon.Active:=False;
    if (ReadBool('Options','Stop Animation',True) = True) then
    begin
      MainForm.RxGIFAnimator1.FrameIndex:=0;
      MainForm.RxGIFAnimator1.Animate:=False;
    end
    else
      MainForm.RxGIFAnimator1.Animate:=True;
  end;
  Caption:='Возраст: '+FloatToStr(RegForm.AgeSpinEdit.Value)+' лет.';
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
    CaptionA := 'Коммерсант:';
    CaptionB := RegForm.RegEdit.Text;
    Gradient := True;
    ShowStdCaption:=True;
  end;
  Timer.Enabled:=True;
end;
{Давайте купим новый дом (1 - комн.)}
procedure TMainForm.HouseLabel1Click(Sender: TObject);
var
  strahovka: word;
begin
  randomize;
  strahovka:=(HousePr.Price1 div 100)*(random(15)+5);
  if (Inf.Money > (HousePr.Price1 + strahovka)) then
  begin
    with Hosp do
    begin
      DayLech:=0;
      MonthLech:=0;
      MonthVupiski:=0;
      YearLech:=0;
    end;
    Inf.Money:=Inf.Money+((HouseInf.DomPrice div 100)*(random(15)+80));
    if (MessageDlg('В ы    м о ж е т е   з а с т р а х о в а т ь   э т о т'
       +#10+#13 + 'д о м   з а   ' + IntToStr(strahovka) + '   Г р о б л е й ( я ) .',
       mtConfirmation,[mbYes, mbNo],0)=mrYes) then
    begin
      Inf.Money:=Inf.Money-HousePr.Price1-strahovka;
      NoMoney;
      HouseInf.DomPrice:=HousePr.Price1;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel1.Caption,1,16)+
        IntToStr(HousePr.Price1)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellDomButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaDoma do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=True;
      end;
    end
    else
    begin
      Inf.Money:=Inf.Money-HousePr.Price1;
      NoMoney;
      HouseInf.DomPrice:=HousePr.Price1;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel1.Caption,1,16)+
        IntToStr(HousePr.Price1)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellDomButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaDoma do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=False;
      end;
    end;
  end
  else
    ShowMessage('У   В а с   н е т у   с т о л ь к о   д е н е г !');
end;
{Давайте купим новый дом (2 - комн.)}
procedure TMainForm.HouseLabel2Click(Sender: TObject);
var
  strahovka: word;
begin
  randomize;
  strahovka:=(HousePr.Price2 div 100)*(random(15)+5);
  if (Inf.Money > (HousePr.Price2 + strahovka)) then
  begin
    with Hosp do
    begin
      DayLech:=0;
      MonthLech:=0;
      MonthVupiski:=0;
      YearLech:=0;
    end;
    Inf.Money:=Inf.Money+((HouseInf.DomPrice div 100)*(random(15)+80));
    if (MessageDlg('В ы    м о ж е т е   з а с т р а х о в а т ь   э т о т'
       +#10+#13 + 'д о м   з а   ' + IntToStr(strahovka) + '   Г р о б л е й ( я ) .',
       mtConfirmation,[mbYes, mbNo],0)=mrYes) then
    begin
      Inf.Money:=Inf.Money-HousePr.Price2-strahovka;
      NoMoney;
      HouseInf.DomPrice:=HousePr.Price2;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel2.Caption,1,16)+
        IntToStr(HousePr.Price2)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellDomButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaDoma do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=True;
      end;
    end
    else
    begin
      Inf.Money:=Inf.Money-HousePr.Price2;
      NoMoney;
      HouseInf.DomPrice:=HousePr.Price2;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel2.Caption,1,16)+
        IntToStr(HousePr.Price2)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellDomButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaDoma do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=False;
      end;
    end;
  end
  else
    ShowMessage('У   В а с   н е т у   с т о л ь к о   д е н е г !');
end;
{Давайте купим новый дом (3 - комн.)}
procedure TMainForm.HouseLabel3Click(Sender: TObject);
var
  strahovka: word;
begin
  randomize;
  strahovka:=(HousePr.Price3 div 100)*(random(15)+5);
  if (Inf.Money > (HousePr.Price3 + strahovka)) then
  begin
    with Hosp do
    begin
      DayLech:=0;
      MonthLech:=0;
      MonthVupiski:=0;
      YearLech:=0;
    end;
    Inf.Money:=Inf.Money+((HouseInf.DomPrice div 100)*(random(15)+80));
    if (MessageDlg('В ы    м о ж е т е   з а с т р а х о в а т ь   э т о т'
       +#10+#13 + 'д о м   з а   ' + IntToStr(strahovka) + '   Г р о б л е й ( я ) .',
       mtConfirmation,[mbYes, mbNo],0)=mrYes) then
    begin
      Inf.Money:=Inf.Money-HousePr.Price3-strahovka;
      NoMoney;
      HouseInf.DomPrice:=HousePr.Price3;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel3.Caption,1,16)+
        IntToStr(HousePr.Price3)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellDomButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaDoma do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=True;
      end;
    end
    else
    begin
      Inf.Money:=Inf.Money-HousePr.Price3;
      NoMoney;
      HouseInf.DomPrice:=HousePr.Price3;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel3.Caption,1,16)+
        IntToStr(HousePr.Price3)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellDomButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaDoma do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=False;
      end;
    end;
  end
  else
    ShowMessage('У   В а с   н е т у   с т о л ь к о   д е н е г !');
end;
{Давайте купим новый дом (4 - комн.)}
procedure TMainForm.HouseLabel4Click(Sender: TObject);
var
  strahovka: word;
begin
  randomize;
  strahovka:=(HousePr.Price4 div 100)*(random(15)+5);
  if (Inf.Money > (HousePr.Price4 + strahovka)) then
  begin
    with Hosp do
    begin
      DayLech:=0;
      MonthLech:=0;
      MonthVupiski:=0;
      YearLech:=0;
    end;
    Inf.Money:=Inf.Money+((HouseInf.DomPrice div 100)*(random(15)+80));
    if (MessageDlg('В ы    м о ж е т е   з а с т р а х о в а т ь   э т о т'
       +#10+#13 + 'д о м   з а   ' + IntToStr(strahovka) + '   Г р о б л е й ( я ) .',
       mtConfirmation,[mbYes, mbNo],0)=mrYes) then
    begin
      Inf.Money:=Inf.Money-HousePr.Price4-strahovka;
      NoMoney;
      HouseInf.DomPrice:=HousePr.Price4;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel4.Caption,1,16)+
        IntToStr(HousePr.Price4)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellDomButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaDoma do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=True;
      end;
    end
    else
    begin
      Inf.Money:=Inf.Money-HousePr.Price4;
      NoMoney;
      HouseInf.DomPrice:=HousePr.Price4;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel4.Caption,1,16)+
        IntToStr(HousePr.Price4)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellDomButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaDoma do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=False;
      end;
    end;
  end
  else
    ShowMessage('У   В а с   н е т у   с т о л ь к о   д е н е г !');
end;
{Давайте купим новый дом (5 - комн.)}
procedure TMainForm.HouseLabel5Click(Sender: TObject);
var
  strahovka: word;
begin
  randomize;
  strahovka:=(HousePr.Price5 div 100)*(random(15)+5);
  if (Inf.Money > (HousePr.Price5 + strahovka)) then
  begin
    with Hosp do
    begin
      DayLech:=0;
      MonthLech:=0;
      MonthVupiski:=0;
      YearLech:=0;
    end;
    Inf.Money:=Inf.Money+((HouseInf.DomPrice div 100)*(random(15)+80));
    if (MessageDlg('В ы    м о ж е т е   з а с т р а х о в а т ь   э т о т'
       +#10+#13 + 'д о м   з а   ' + IntToStr(strahovka) + '   Г р о б л е й ( я ) .',
       mtConfirmation,[mbYes, mbNo],0)=mrYes) then
    begin
      Inf.Money:=Inf.Money-HousePr.Price5-strahovka;
      NoMoney;
      HouseInf.DomPrice:=HousePr.Price5;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel5.Caption,1,16)+
        IntToStr(HousePr.Price5)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellDomButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaDoma do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=True;
      end;
    end
    else
    begin
      Inf.Money:=Inf.Money-HousePr.Price5;
      NoMoney;
      HouseInf.DomPrice:=HousePr.Price5;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel5.Caption,1,16)+
        IntToStr(HousePr.Price5)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellDomButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaDoma do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=False;
      end;
    end;
  end
  else
    ShowMessage('У   В а с   н е т у   с т о л ь к о   д е н е г !');
end;
{Давайте купим новый дом (6 - комн.)}
procedure TMainForm.HouseLabel6Click(Sender: TObject);
var
  strahovka: word;
begin
  randomize;
  strahovka:=(HousePr.Price6 div 100)*(random(15)+5);
  if (Inf.Money > (HousePr.Price6 + strahovka)) then
  begin
    with Hosp do
    begin
      DayLech:=0;
      MonthLech:=0;
      MonthVupiski:=0;
      YearLech:=0;
    end;
    Inf.Money:=Inf.Money+((HouseInf.DomPrice div 100)*(random(15)+80));
    if (MessageDlg('В ы    м о ж е т е   з а с т р а х о в а т ь   э т о т'
       +#10+#13 + 'д о м   з а   ' + IntToStr(strahovka) + '   Г р о б л е й ( я ) .',
       mtConfirmation,[mbYes, mbNo],0)=mrYes) then
    begin
      Inf.Money:=Inf.Money-HousePr.Price6-strahovka;
      NoMoney;
      HouseInf.DomPrice:=HousePr.Price6;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel6.Caption,1,16)+
        IntToStr(HousePr.Price6)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellDomButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaDoma do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=True;
      end;
    end
    else
    begin
      Inf.Money:=Inf.Money-HousePr.Price6;
      NoMoney;
      HouseInf.DomPrice:=HousePr.Price6;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel6.Caption,1,16)+
        IntToStr(HousePr.Price6)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellDomButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaDoma do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=False;
      end;
    end;
  end
  else
    ShowMessage('У   В а с   н е т у   с т о л ь к о   д е н е г !');
end;
{Давайте купим новый дом (7 - комн.)}
procedure TMainForm.HouseLabel7Click(Sender: TObject);
var
  strahovka: word;
begin
  randomize;
  strahovka:=(HousePr.Price7 div 100)*(random(15)+5);
  if (Inf.Money > (HousePr.Price7 + strahovka)) then
  begin
    with Hosp do
    begin
      DayLech:=0;
      MonthLech:=0;
      MonthVupiski:=0;
      YearLech:=0;
    end;
    Inf.Money:=Inf.Money+((HouseInf.DomPrice div 100)*(random(15)+80));
    if (MessageDlg('В ы    м о ж е т е   з а с т р а х о в а т ь   э т о т'
       +#10+#13 + 'д о м   з а   ' + IntToStr(strahovka) + '   Г р о б л е й ( я ) .',
       mtConfirmation,[mbYes, mbNo],0)=mrYes) then
    begin
      Inf.Money:=Inf.Money-HousePr.Price7-strahovka;
      NoMoney;
      HouseInf.DomPrice:=HousePr.Price7;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel7.Caption,1,16)+
        IntToStr(HousePr.Price7)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellDomButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaDoma do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=True;
      end;
    end
    else
    begin
      Inf.Money:=Inf.Money-HousePr.Price7;
      NoMoney;
      HouseInf.DomPrice:=HousePr.Price7;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyHouseLabel.Caption:='Дом          '+Copy(HouseLabel7.Caption,1,16)+
        IntToStr(HousePr.Price7)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellDomButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaDoma do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=False;
      end;
    end;
  end
  else
    ShowMessage('У   В а с   н е т у   с т о л ь к о   д е н е г !');
end;
{Давайте купим новый автомобиль}
procedure TMainForm.AvtoLabel1Click(Sender: TObject);
var
  strahovka: word;
begin
  randomize;
  strahovka:=(AvtoPr.Price1 div 100)*(random(15)+5);
  if (Inf.Money > (AvtoPr.Price1 + strahovka)) then
  begin
    Inf.Money:=Inf.Money+((HouseInf.AvtoPrice div 100)*(random(15)+80));
    if (MessageDlg('В ы    м о ж е т е   з а с т р а х о в а т ь   э т о т'
       +#10+#13 + 'а в т о м о б и л ь   з а   ' + IntToStr(strahovka) + '   Г р о б л е й ( я ) .',
       mtConfirmation,[mbYes, mbNo],0)=mrYes) then
    begin
      Inf.Money:=Inf.Money-AvtoPr.Price1-strahovka;
      NoMoney;
      HouseInf.AvtoPrice:=AvtoPr.Price1;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel1.Caption,1,17)+
         IntToStr(AvtoPr.Price1)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellAvtoButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaAvto do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=True;
      end;
    end
    else
    begin
      Inf.Money:=Inf.Money-AvtoPr.Price1;
      NoMoney;
      HouseInf.AvtoPrice:=AvtoPr.Price1;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel1.Caption,1,17)+
         IntToStr(AvtoPr.Price1)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellAvtoButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaAvto do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=False;
      end;
    end;
  end
  else
    ShowMessage('У   В а с   н е т у   с т о л ь к о   д е н е г !');
end;
{Давайте купим новый автомобиль}
procedure TMainForm.AvtoLabel2Click(Sender: TObject);
var
  strahovka: word;
begin
  randomize;
  strahovka:=(AvtoPr.Price2 div 100)*(random(15)+5);
  if (Inf.Money > (AvtoPr.Price2 + strahovka)) then
  begin
    Inf.Money:=Inf.Money+((HouseInf.AvtoPrice div 100)*(random(15)+80));
    if (MessageDlg('В ы    м о ж е т е   з а с т р а х о в а т ь   э т о т'
       +#10+#13 + 'а в т о м о б и л ь   з а   ' + IntToStr(strahovka) + '   Г р о б л е й ( я ) .',
       mtConfirmation,[mbYes, mbNo],0)=mrYes) then
    begin
      Inf.Money:=Inf.Money-AvtoPr.Price2-strahovka;
      NoMoney;
      HouseInf.AvtoPrice:=AvtoPr.Price2;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel2.Caption,1,17)+
         IntToStr(AvtoPr.Price2)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellAvtoButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaAvto do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=True;
      end;
    end
    else
    begin
      Inf.Money:=Inf.Money-AvtoPr.Price2;
      NoMoney;
      HouseInf.AvtoPrice:=AvtoPr.Price2;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel2.Caption,1,17)+
         IntToStr(AvtoPr.Price2)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellAvtoButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaAvto do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=False;
      end;
    end;
  end
  else
    ShowMessage('У   В а с   н е т у   с т о л ь к о   д е н е г !');
end;
{Давайте купим новый автомобиль}
procedure TMainForm.AvtoLabel3Click(Sender: TObject);
var
  strahovka: word;
begin
  randomize;
  strahovka:=(AvtoPr.Price3 div 100)*(random(15)+5);
  if (Inf.Money > (AvtoPr.Price3 + strahovka)) then
  begin
    Inf.Money:=Inf.Money+((HouseInf.AvtoPrice div 100)*(random(15)+80));
    if (MessageDlg('В ы    м о ж е т е   з а с т р а х о в а т ь   э т о т'
       +#10+#13 + 'а в т о м о б и л ь   з а   ' + IntToStr(strahovka) + '   Г р о б л е й ( я ) .',
       mtConfirmation,[mbYes, mbNo],0)=mrYes) then
    begin
      Inf.Money:=Inf.Money-AvtoPr.Price3-strahovka;
      NoMoney;
      HouseInf.AvtoPrice:=AvtoPr.Price3;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel3.Caption,1,17)+
         IntToStr(AvtoPr.Price3)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellAvtoButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaAvto do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=True;
      end;
    end
    else
    begin
      Inf.Money:=Inf.Money-AvtoPr.Price3;
      NoMoney;
      HouseInf.AvtoPrice:=AvtoPr.Price3;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel3.Caption,1,17)+
         IntToStr(AvtoPr.Price3)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellAvtoButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaAvto do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=False;
      end;
    end;
  end
  else
    ShowMessage('У   В а с   н е т у   с т о л ь к о   д е н е г !');
end;
{Давайте купим новый автомобиль}
procedure TMainForm.AvtoLabel4Click(Sender: TObject);
var
  strahovka: word;
begin
  randomize;
  strahovka:=(AvtoPr.Price4 div 100)*(random(15)+5);
  if (Inf.Money > (AvtoPr.Price4 + strahovka)) then
  begin
    Inf.Money:=Inf.Money+((HouseInf.AvtoPrice div 100)*(random(15)+80));
    if (MessageDlg('В ы    м о ж е т е   з а с т р а х о в а т ь   э т о т'
       +#10+#13 + 'а в т о м о б и л ь   з а   ' + IntToStr(strahovka) + '   Г р о б л е й ( я ) .',
       mtConfirmation,[mbYes, mbNo],0)=mrYes) then
    begin
      Inf.Money:=Inf.Money-AvtoPr.Price4-strahovka;
      NoMoney;
      HouseInf.AvtoPrice:=AvtoPr.Price4;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel4.Caption,1,17)+
         IntToStr(AvtoPr.Price4)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellAvtoButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaAvto do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=True;
      end;
    end
    else
    begin
      Inf.Money:=Inf.Money-AvtoPr.Price4;
      NoMoney;
      HouseInf.AvtoPrice:=AvtoPr.Price4;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel4.Caption,1,17)+
         IntToStr(AvtoPr.Price4)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellAvtoButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaAvto do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=False;
      end;
    end;
  end
  else
    ShowMessage('У   В а с   н е т у   с т о л ь к о   д е н е г !');
end;
{Давайте купим новый автомобиль}
procedure TMainForm.AvtoLabel5Click(Sender: TObject);
var
  strahovka: word;
begin
  randomize;
  strahovka:=(AvtoPr.Price5 div 100)*(random(15)+5);
  if (Inf.Money > (AvtoPr.Price5 + strahovka)) then
  begin
    Inf.Money:=Inf.Money+((HouseInf.AvtoPrice div 100)*(random(15)+80));
    if (MessageDlg('В ы    м о ж е т е   з а с т р а х о в а т ь   э т о т'
       +#10+#13 + 'а в т о м о б и л ь   з а   ' + IntToStr(strahovka) + '   Г р о б л е й ( я ) .',
       mtConfirmation,[mbYes, mbNo],0)=mrYes) then
    begin
      Inf.Money:=Inf.Money-AvtoPr.Price5-strahovka;
      NoMoney;
      HouseInf.AvtoPrice:=AvtoPr.Price5;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel5.Caption,1,17)+
         IntToStr(AvtoPr.Price5)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellAvtoButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaAvto do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=True;
      end;
    end
    else
    begin
      Inf.Money:=Inf.Money-AvtoPr.Price5;
      NoMoney;
      HouseInf.AvtoPrice:=AvtoPr.Price5;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel5.Caption,1,17)+
         IntToStr(AvtoPr.Price5)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellAvtoButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaAvto do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=False;
      end;
    end;
  end
  else
    ShowMessage('У   В а с   н е т у   с т о л ь к о   д е н е г !');
end;
{Давайте купим новый автомобиль}
procedure TMainForm.AvtoLabel6Click(Sender: TObject);
var
  strahovka: word;
begin
  randomize;
  strahovka:=(AvtoPr.Price6 div 100)*(random(15)+5);
  if (Inf.Money > (AvtoPr.Price6 + strahovka)) then
  begin
    Inf.Money:=Inf.Money+((HouseInf.AvtoPrice div 100)*(random(15)+80));
    if (MessageDlg('В ы    м о ж е т е   з а с т р а х о в а т ь   э т о т'
       +#10+#13 + 'а в т о м о б и л ь   з а   ' + IntToStr(strahovka) + '   Г р о б л е й ( я ) .',
       mtConfirmation,[mbYes, mbNo],0)=mrYes) then
    begin
      Inf.Money:=Inf.Money-AvtoPr.Price6-strahovka;
      NoMoney;
      HouseInf.AvtoPrice:=AvtoPr.Price6;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel6.Caption,1,17)+
         IntToStr(AvtoPr.Price6)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellAvtoButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaAvto do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=True;
      end;
    end
    else
    begin
      Inf.Money:=Inf.Money-AvtoPr.Price6;
      NoMoney;
      HouseInf.AvtoPrice:=AvtoPr.Price6;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel6.Caption,1,17)+
         IntToStr(AvtoPr.Price6)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellAvtoButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaAvto do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=False;
      end;
    end;
  end
  else
    ShowMessage('У   В а с   н е т у   с т о л ь к о   д е н е г !');
end;
{Давайте купим новый автомобиль}
procedure TMainForm.AvtoLabel7Click(Sender: TObject);
var
  strahovka: word;
begin
  randomize;
  strahovka:=(AvtoPr.Price7 div 100)*(random(15)+5);
  if (Inf.Money > (AvtoPr.Price7 + strahovka)) then
  begin
    Inf.Money:=Inf.Money+((HouseInf.AvtoPrice div 100)*(random(15)+80));
    if (MessageDlg('В ы    м о ж е т е   з а с т р а х о в а т ь   э т о т'
       +#10+#13 + 'а в т о м о б и л ь   з а   ' + IntToStr(strahovka) + '   Г р о б л е й ( я ) .',
       mtConfirmation,[mbYes, mbNo],0)=mrYes) then
    begin
      Inf.Money:=Inf.Money-AvtoPr.Price7-strahovka;
      NoMoney;
      HouseInf.AvtoPrice:=AvtoPr.Price7;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel7.Caption,1,17)+
         IntToStr(AvtoPr.Price7)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellAvtoButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaAvto do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=True;
      end;
    end
    else
    begin
      Inf.Money:=Inf.Money-AvtoPr.Price7;
      NoMoney;
      HouseInf.AvtoPrice:=AvtoPr.Price7;
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+
      '  Гроблей(я).';
      MyAvtoLabel.Caption:='Автомобиль   '+Copy(AvtoLabel7.Caption,1,17)+
         IntToStr(AvtoPr.Price7)+'   Гроблей(я).';
      Timer.Enabled:=True;
      SellAvtoButton.Enabled:=True;
      GameControl.ActivePage:=Information;
      with StrahovkaAvto do
      begin
        SDay:=random(25)+2;
        SMonth:=random(11)+1;
        SYear:=StrToInt(YearLabel.Caption);
        SStrahovka:=False;
      end;
    end;
  end
  else
    ShowMessage('У   В а с   н е т у   с т о л ь к о   д е н е г !');
end;
{Дадим деньги в долг}
procedure TMainForm.GiveButton1Click(Sender: TObject);
begin
  GiveMoneyForm1.Position:=poScreenCenter;
  GiveMoneyForm1.ShowModal;
end;
{Возьмем деньги в кредит}
procedure TMainForm.TakeButton1Click(Sender: TObject);
begin
  TakeMoneyForm1.Position:=poScreenCenter;
  TakeMoneyForm1.ShowModal;
end;
{Сохраним ка мы творенье наших рук}
procedure TMainForm.SaveGameClick(Sender: TObject);
var
  sg: SaveMyGame;
  F: file of SaveMyGame;
begin
  Timer.Enabled:=False;
  with sg do
  begin
    Day:=StrToInt(DayLabel.Caption);
    Month:=StrToInt(TempLabel.Caption);
    MonthString:=MonthLabel.Caption;
    Year:=StrToInt(YearLabel.Caption);
    Inform:=Inf;

    BBank:=Bank;
    BCredLabCap:=CreditLabel1.Caption;
    BDolgLabCap:=VkladLabel1.Caption;
    BCredButEnab:=TakeButton1.Enabled;
    BDolgButEnab:=GiveButton1.Enabled;

    Exchange:=Exch;
    ExMnNfLabCap:=ExMonthNeftLabel.Caption;
    ExMnZmLabCap:=ExMonthZemlLabel.Caption;

    HouseInform:=HouseInf;
    HHsLabCap:=MyHouseLabel.Caption;
    HAvLabCap:=MyAvtoLabel.Caption;
    HSlDmBtEnb:=SellDomButton.Enabled;
    HSlAvBtEnb:=SellAvtoButton.Enabled;

    RHousePrice:=HousePr;
    RAvtoPrice:=AvtoPr;

    SSecr:=Secr;
    RetMonLabCap:=ReturnMoneyLabel1.Caption;
    YMRetMonLabCap:=YouMustReturnMoneyLabel1.Caption;

    Hospit:=Hosp;

    StrahDom:=StrahovkaDoma;
    StrahAvto:=StrahovkaAvto;
  end;
  if SaveDlg.Execute then
  begin
    try
      AssignFile(F, SaveDlg.FileName);
      Rewrite(F);
      Write(F, sg);
    finally
      CloseFile(F);
    end;
  end;
end;

procedure TMainForm.SaveDlgClose(Sender: TObject);
begin
  Timer.Enabled:=True;
end;

procedure TMainForm.NewClick(Sender: TObject);
begin
  Timer.Enabled:=False;
  if MessageDlg('Н е   х о т и т е   л и   В ы   с о х р а н и т ь   э т у   и г р у ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    SaveGameClick(Sender);
    Hide;
    RegForm.Show;
  end
  else
  begin
    Hide;
    RegForm.Show;
  end;
end;

procedure TMainForm.ExitClick(Sender: TObject);
begin
  Timer.Enabled:=False;
  if MessageDlg('А   В ы   у в е р е н ы   ч т о   х о т и т е   с д е л а т ь   э т о ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if MessageDlg('Н е   х о т и т е   л и   В ы   с о х р а н и т ь   э т у   и г р у ?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      SaveGameClick(Sender);
      FirstForm.Show;
      Hide;
    end
    else
    begin
      FirstForm.Show;
      Hide;
    end;
  end
  else
  begin
    Timer.Enabled:=True;
  end;
end;

procedure TMainForm.Close3dButtonClick(Sender: TObject);
begin
  ExitClick(Sender);
end;

procedure TMainForm.OptionClick(Sender: TObject);
begin
  OptionForm.Position:=poScreenCenter;
  OptionForm.ShowModal;
end;

procedure TMainForm.RxTrayIconDblClick(Sender: TObject);
begin
  Application.Restore;
  Application.BringToFront;
end;

procedure TMainForm.LMD3DCaptionButton1Click(Sender: TObject);
begin
  case GameControl.ActivePage.PageIndex of
    0: Application.HelpContext(20);
    1: Application.HelpContext(30);
    2: Application.HelpContext(40);
    3: Application.HelpContext(50);
    4: Application.HelpContext(60);
    5: Application.HelpContext(70);
  else
     Application.HelpContext(10);
  end;
end;

procedure TMainForm.ContentClick(Sender: TObject);
begin
  Application.HelpContext(10);
end;

procedure TMainForm.HintPanel(Sender: TObject);
begin
  StatusPnl.Panels[1].Text:=Application.Hint;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Application.OnHint:=HintPanel;
end;

procedure TMainForm.AboutClick(Sender: TObject);
begin
  Timer.Enabled:=False;
  AboutForm.Position:=poScreenCenter;
  AboutForm.ShowModal;
  if (GameControl.ActivePage = Information) then
    Timer.Enabled:=True
  else
    Timer.Enabled:=False;
end;

end.
