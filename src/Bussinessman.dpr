program Bussinessman;

uses
  Forms,
  First in 'First.pas' {FirstForm},
  Registration in 'Registration.pas' {RegForm},
  MainUnit in 'MainUnit.pas' {MainForm},
  SellZeml in 'SellZeml.pas' {SellZemlForm},
  SellNeft in 'SellNeft.pas' {SellNeftForm},
  TakeMoney in 'TakeMoney.pas' {TakeMoneyForm1},
  BuyZeml in 'BuyZeml.pas' {BuyZemlForm},
  NewYear in 'NewYear.pas' {NewYearForm},
  BuyNeft in 'BuyNeft.pas' {BuyNeftForm},
  GiveMoney in 'GiveMoney.pas' {GiveMoneyForm1},
  Options in 'Options.pas' {OptionForm},
  About in 'About.pas' {AboutForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.HelpFile := 'C:\Мои документы\Programs\Bussiness\Bussiness.hlp';
  Application.CreateForm(TFirstForm, FirstForm);
  Application.CreateForm(TRegForm, RegForm);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TSellZemlForm, SellZemlForm);
  Application.CreateForm(TSellNeftForm, SellNeftForm);
  Application.CreateForm(TTakeMoneyForm1, TakeMoneyForm1);
  Application.CreateForm(TBuyZemlForm, BuyZemlForm);
  Application.CreateForm(TNewYearForm, NewYearForm);
  Application.CreateForm(TBuyNeftForm, BuyNeftForm);
  Application.CreateForm(TGiveMoneyForm1, GiveMoneyForm1);
  Application.CreateForm(TOptionForm, OptionForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.Run;
end.
