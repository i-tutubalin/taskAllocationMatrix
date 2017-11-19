unit UStartMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxButtons;

type
  TFormStartMain = class(TForm)
    EditReadPassword: TEdit;
    EditReadLogin: TEdit;
    DBCBReadLogin: TDBComboBox;
    DBCBReadPassword: TDBComboBox;
    cxBtReadPassword: TcxButton;
    LbReadPassword: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxBtReadPasswordClick(Sender: TObject);
    procedure EditReadPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure EditReadLoginKeyPress(Sender: TObject; var Key: Char);
  private
    tempPassword:String; //оюпнкэ ббедемши онкэгнбюрекел
    { Private declarations }
  public
    IdUser:String; //ID онкэгнбюрекъ бньедьецн б яхярелс
    { Public declarations }
  end;

var
  FormStartMain: TFormStartMain;

implementation

uses MDBControl, UMain, MImg;

{$R *.dfm}

procedure TFormStartMain.cxBtReadPasswordClick(Sender: TObject);
var
    i: integer;
begin
  //опнбепъел опюбкэмнярэ ббедемнцн кнцхмю х оюпнкъ
  for  i := 0 to ModuleDBControl.QueryDev.RecordCount - 1 do
  begin
    //еякх оюпнкэ х кнцхм йнпейрем
    if (EditReadLogin.Text = DBCBReadLogin.items[i]) and
       (tempPassword = DBCBReadPassword.Items[i]) then
    begin
      //гюонлхмюер ID онкэгнбюрекъ
      //х бундхл б бяхярелс
      IdUser := IntToStr(i);
      FormMain.Enabled := true;
      FormMain.Visible := true;
      FormStartMain.Hide;
    end
    else
    begin
      //нонбеыюел онкэгнбюрекъ врн оюпнкэ ме бепмши
      LbReadPassword.Font.Color := clRed;
      LbReadPassword.Caption := 'Wrong password. Try again.';
    end;
  end;
  //яапюяшбюер ббедемши онкэгнбюрекел оюпнкэ
  EditReadPassword.Text := '';
  tempPassword:='';
end;

procedure TFormStartMain.EditReadLoginKeyPress(Sender: TObject; var Key: Char);
begin
  case key of
    #13: //еякх ббедем ENTER
         //оепеундхл б онке ббндю оюпнкъ
      EditReadPassword.setfocus;
  end;
end;

procedure TFormStartMain.EditReadPasswordKeyPress(Sender: TObject;
  var Key: Char);
begin
  //опх ббедемхе яхлбнкнб б онке дкъ оюпнкъ
  case key of
    #13: //еякх ббедем ENTER
         //бундхл б яхярелс
      cxBtReadPasswordClick(self);
    #8: //еякх ббефем BACKSPACE
        //сдюкъел онякефмхи ббедемши яхлбнк
      delete(tempPassword, length(tempPassword), 1);
    else //опх кчанл дпсцнл яхлбнке
    begin//гюонлхмюел ецн х пхясел гбегднвйс б онке ббндю оюпнкъ
      tempPassword:=tempPassword+key;
      key:='*';
    end;
  end;
end;

procedure TFormStartMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormMain.Close;
end;

procedure TFormStartMain.FormCreate(Sender: TObject);
 var
  login, password, name: String;
  i: integer;
begin
  //акнйхпсел нямнбмсч тнплс
  FormMain.Enabled := false;
  //вхярхл йнпнайх дкъ дюммшу я ад
  DBCBReadLogin.Items.Clear;
  DBCBReadPassword.Items.Clear;
  //гюонкмъел яохянй бяеу хлем,кнцхмнб х оюпнкеи хг ад
  ModuleDBControl.QueryDev.First;
  for  i := 0 to ModuleDBControl.QueryDev.RecordCount - 1 do
  begin
    login := ModuleDBControl.QueryDev.FieldByName('login').AsString;
    DBCBReadLogin.AddItem(login, self);

    password := ModuleDBControl.QueryDev.FieldByName('password').AsString;
    DBCBReadPassword.AddItem(password, self);

    ModuleDBControl.QueryDev.Next;
  end;
end;

end.
