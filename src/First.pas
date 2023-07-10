unit First;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, sherfrm, Buttons, Jpeg;

type
  TFirstForm = class(TForm)
    OpenDlg: TOpenDialog;
    NewGame: TSpeedButton;
    OpenGame: TSpeedButton;
    TheBest: TSpeedButton;
    Help: TSpeedButton;
    Exit: TSpeedButton;
    Image1: TImage;
    procedure ExitClick(Sender: TObject);
    procedure NewGameClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OpenGameClick(Sender: TObject);
    procedure HelpClick(Sender: TObject);
    procedure OpenDlgClose(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FirstForm: TFirstForm;

implementation

uses Registration, MainUnit;

{$R *.DFM}

procedure TFirstForm.ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFirstForm.NewGameClick(Sender: TObject);
begin
  RegForm.ShowModal;
end;

procedure TFirstForm.FormShow(Sender: TObject);
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
    CaptionB := 'Bussinessman';
    Gradient := True;
    ShowStdCaption:=False;
  end;
end;

procedure TFirstForm.OpenGameClick(Sender: TObject);
var
  F: file of SaveMyGame;
  sg: SaveMyGame;
  MonthTemp: string[10];
begin
  if OpenDlg.Execute then
  begin
    try
      AssignFile(F, OpenDlg.FileName);
      Reset(F);
      Read(F, sg);
    finally
      CloseFile(F);
    end;
    Inf:=sg.Inform;
    Bank:=sg.BBank;
    Exch:=sg.Exchange;
    HouseInf:=sg.HouseInform;
    HousePr:=sg.RHousePrice;
    AvtoPr:=sg.RAvtoPrice;
    Secr:=sg.SSecr;
    Hosp:=sg.Hospit;
    StrahovkaDoma:=sg.StrahDom;
    StrahovkaAvto:=sg.StrahAvto;
    with MainForm do
    begin
      DayLabel.Caption:=IntToStr(sg.Day);
      TempLabel.Caption:=IntToStr(sg.Month);
      MonthLabel.Caption:=sg.MonthString;
      YearLabel.Caption:=IntToStr(sg.Year);
      {Процент под кредит}
      CreditLabel.Caption:='Процент под кредит '+IntToStr(Inf.CreditPrc)+'%';
      {Процент под долг}
      DolgLabel.Caption:='Процент под долг   '+IntToStr(Inf.DolgPrc)+'%';
      {Начальный капитал}
      MoneyLabel.Caption:='Ваш капитал  '+IntToStr(Inf.Money)+'  Гроблей(я).';
      {Кредит}
      YouLabel.Caption:='Вы должны    '+IntToStr(Inf.YouMust)+'  Гроблей(я).';
      {Долг}
      ForYouLabel.Caption:='Вам должны   '+IntToStr(Inf.ForYouMust)+'  Гроблей(я).';
      {Процент платы за дом}
      PlDomLabel.Caption:='Плата за дом    '+IntToStr(Inf.DomPrc)+'%';
      {Процент платы за землю}
      PlZemlLabel.Caption:='Плата за землю  '+IntToStr(Inf.ZemlyaPrc)+'%';

      VkladLabel1.Caption:=sg.BDolgLabCap;
      CreditLabel1.Caption:=sg.BCredLabCap;
      GiveButton1.Enabled:=sg.BDolgButEnab;
      TakeButton1.Enabled:=sg.BCredButEnab;

      ExMonthNeftLabel.Caption:=sg.ExMnNfLabCap;
      ExMonthZemlLabel.Caption:=sg.ExMnZmLabCap;
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
      MyHouseLabel.Caption:=sg.HHsLabCap;
      MyAvtoLabel.Caption:=sg.HAvLabCap;
      SellDomButton.Enabled:=sg.HSlDmBtEnb;
      SellAvtoButton.Enabled:=sg.HSlAvBtEnb;

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

      ReturnMoneyLabel1.Caption:=sg.RetMonLabCap;
      YouMustReturnMoneyLabel1.Caption:=sg.YMRetMonLabCap;

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
  end;
  Hide;
end;

procedure TFirstForm.HelpClick(Sender: TObject);
begin
  Application.HelpContext(10);
end;

procedure TFirstForm.OpenDlgClose(Sender: TObject);
begin
  RegForm.Show;
end;

end.
