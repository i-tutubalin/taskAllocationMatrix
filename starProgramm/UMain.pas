unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, FRecordTask, FRecordDev, StdCtrls, Mask, DBCtrls, Menus,
  ComCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, FMainTask, ImgList,
  FMainUser,  Buttons, Grids, DBGrids, DB,
  TabNotBk, ADODB, jpeg, FMainAbout, FMainStatist;

type
  TFormMain = class(TForm)
    cxPageControlMainMenu: TcxPageControl;
    cxMainTask: TcxTabSheet;
    cxStatist: TcxTabSheet;
    cxUser: TcxTabSheet;
    FrameMainUser: TFrameMainUser;
    cxAbout: TcxTabSheet;
    FrameMainStatist: TFrameMainStatist;
    FrameMainTask: TFrameMainTask;
    FrameMainAbout: TFrameMainAbout;
    procedure refresh1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxUserShow(Sender: TObject);
    procedure cxMainTaskShow(Sender: TObject);
    procedure cxAboutShow(Sender: TObject);
    procedure cxStatistShow(Sender: TObject);
  private
    { Private declarations }
  public
    path:string; //œ”—“‹     ƒ≈–≈ “Œ–»» œ–Œ≈ “¿
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses MDBControl, UNewTask, UDeleteTask, MImg, UStartMain;

{$R *.dfm}
procedure TFormMain.cxAboutShow(Sender: TObject);
begin
  //«¿√–”∆¿≈Ã ¿¬¿“¿– ” –¿«–¿¡Œ“◊» ¿
  FrameMainAbout.ImageAvatar.Picture.LoadFromFile(path + 'ËÍÓÌÍË\About.png')
end;

procedure TFormMain.cxMainTaskShow(Sender: TObject);
begin
  //—¬ﬂ«€¬¿Õ»≈ ƒ¬”’ “¿¡À»÷(dev Ë task) ◊≈–≈«  Œ—“€À‹
  FrameMainTask.DBEditRelationsTableDevAndTaskChange(Sender);
  //Õ¿—“–»¬¿≈Ã — –ŒÀ¡¿– »« ¬ À¿ƒ » «¿ƒ¿Õ»…
  ShowScrollBar(FrameMainTask.FrameRecordDev.DBGridDev.Handle, SB_VERT, True);
  ShowScrollBar(FrameMainTask.FrameRecordTask.DBGridTask.Handle, SB_VERT, True);
end;

procedure TFormMain.cxStatistShow(Sender: TObject);
begin
  //Õ¿—“–»¬¿≈Ã — –ŒÀ¡¿– »« ¬ À¿ƒ » —“¿“»—“
  ShowScrollBar(FrameMainStatist.FrameRecordDev.DBGridDev.Handle, SB_VERT, True);
end;

procedure TFormMain.cxUserShow(Sender: TObject);
var
  i:integer;
begin
  //«¿œŒÀÕﬂ≈Ã »Õ‘Œ–Ã¿÷»ﬁ Œ œŒÀ‹«Œ¬¿“≈À≈ ¬Œÿ≈ƒÿ≈√Œ ¬ —»—“≈Ã”
  with FrameMainUser do
  begin
    LbIDUser.Caption:=FormStartMain.IdUser;
    ModuleDBControl.QueryDev.First;
    for i := 0 to StrToInt(FormStartMain.IdUser) - 1 do
      ModuleDBControl.QueryDev.Next;
    EditDev.Text:=ModuleDBControl.QueryDev.FieldByName('name').AsString;
    EditLogin.Text:=ModuleDBControl.QueryDev.FieldByName('login').AsString;
    LbPasswordUser.Caption:=ModuleDBControl.QueryDev.FieldByName('password').AsString;

    //«¿√–”« ¿ ¿¬¿“¿– »
    cxMemoPathAvatarUser.Text:=ModuleDBControl.QueryDev.FieldByName('avatar').AsString;
    if cxMemoPathAvatarUser.Text = '' then
      ImageAvatarUser.Picture.LoadFromFile(path + 'ËÍÓÌÍË\dev.jpg')
    else
      ImageAvatarUser.Picture.LoadFromFile(cxMemoPathAvatarUser.Text);

    //”¡≈–¿≈Ã œ–≈ƒ”œ–≈∆ƒ≈Õ»≈ Œ¡ Œÿ»¡ ¿’
    LbIncorrectPassword.Visible:=false;
    LbIncorrectRepeatPassword.Visible:=false;
  end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  //—“¿Õƒ¿–“Õ¿ﬂ «¿√–”«Œ◊Õ¿ﬂ ¬ À¿ƒ ¿
  cxPageControlMainMenu.Properties.ActivePage := cxMainTask;
  cxPageControlMainMenu.Properties.ActivateFocusedTab:=true;
  //œ”—“‹     ƒ≈–≈ “Œ–»» œ–Œ≈ “¿
  path:= ExtractFilePath(Application.ExeName);
end;

procedure TFormMain.refresh1Click(Sender: TObject);
begin
  //Œ¡ÕŒ¬À≈Õ»≈ ¡ƒ
  ModuleDBControl.QueryTask.Refresh;
  ModuleDBControl.QueryDev.Refresh;
end;

end.
