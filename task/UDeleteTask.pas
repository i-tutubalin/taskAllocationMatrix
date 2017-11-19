unit UDeleteTask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxLookAndFeels,
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
  TFormDeleteTask = class(TForm)
    Panel: TPanel;
    EditReadPassword: TEdit;
    cxBtReadPassword: TcxButton;
    LbReadPassworld: TLabel;
    procedure FormShow(Sender: TObject);
    procedure cxBtReadPasswordClick(Sender: TObject);
    procedure EditReadPasswordKeyPress(Sender: TObject; var Key: Char);
  private
    tempPassword:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDeleteTask: TFormDeleteTask;

implementation

uses MDBControl, MImg;

{$R *.dfm}

procedure TFormDeleteTask.cxBtReadPasswordClick(Sender: TObject);
var
  passworld: String;
begin
  //сдюкъер бшапюмсч гюохяэ опх опюбхкэмнл ббедемхх оюпнкъ
  //б опнрхбмнл яксвюе нонбеыюел онкэгнбюрекъ врн оюпнкэ ме бепмши
  passworld := 'ОЮПНКЭ';
  if tempPassword = passworld then
  begin
    ModuleDBControl.QueryTask.Delete;
    FormDeleteTask.Close;
  end
  else
  begin
    EditReadPassword.Text := '';
    tempPassword:='';
    LbReadPassworld.Font.Color := clRed;
    LbReadPassworld.Caption := 'мЕОПЮБХКЭМШИ ОЮПНКЭ. оНОПНАСИ ЕЫЕ ПЮГ.';
  end;
end;

procedure TFormDeleteTask.EditReadPasswordKeyPress(Sender: TObject;
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

procedure TFormDeleteTask.FormShow(Sender: TObject);
begin
  //намскъел гмювемхе онкеи опх якедсчыел хяонкэгнбюмхх
  LbReadPassworld.Font.Color := clWindowText;
  LbReadPassworld.Caption := 'рЕАЕ НМН МЮДН?';
  EditReadPassword.Text := '';
end;

end.
