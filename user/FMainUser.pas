unit FMainUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, StdCtrls, cxButtons, DBCtrls, ExtCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, ExtDlgs, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxDBEdit, IWBaseWAPControl, IWControlWAP, IWExtCtrlsWAP,
  IWDBExtCtrlsWAP, IWControl32, IWExtCtrls32, IWDBExtCtrls32, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWExtCtrls, IWDBExtCtrls, cxImage;

type
  TFrameMainUser = class(TFrame)
    LbName: TLabel;
    LbLogin: TLabel;
    LbIDUser: TLabel;
    LbPasswordUser: TLabel;
    LbNewPassword: TLabel;
    LbRepeatNewPassword: TLabel;
    LbOldPassword: TLabel;
    LbIncorrectPassword: TLabel;
    LbIncorrectRepeatPassword: TLabel;
    EditDev: TEdit;
    EditLogin: TEdit;
    cxBtEditInfoUser: TcxButton;
    EditNewPassword: TEdit;
    EditRepeatNewPassword: TEdit;
    EditOldPassword: TEdit;
    ImageAvatarUser: TImage;
    OpenPictureDialogAvatar: TOpenPictureDialog;
    cxMemoPathAvatarUser: TcxMemo;
    LbPathAvatarUser: TLabel;
    cxBtPathAvatarUser: TcxButton;
    procedure cxBtEditInfoUserClick(Sender: TObject);
    procedure cxBtPathAvatarUserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses UStartMain, MDBControl, MImg, UMain;

{$R *.dfm}

procedure TFrameMainUser.cxBtEditInfoUserClick(Sender: TObject);
var
  i: integer;
begin
  //—Œ’–¿Õﬂ≈Ã »«Ã≈Õ≈ÕÕ”ﬁ »Õ‘Œ–Ã¿÷»ﬁ Œ œŒÀ‹«Œ¬¿“≈À≈
  //≈—À» œŒÀ‹«Œ¬¿“≈À‹ ¬≈–ÕŒ ¬¬≈À œ¿–ŒÀ‹
  if EditOldPassword.Text = LbPasswordUser.Caption then
  begin
    ModuleDBControl.QueryDev.First;
    for i := 0 to StrToInt(FormStartMain.IdUser) - 1 do
      ModuleDBControl.QueryDev.Next;

    ModuleDBControl.QueryDev.Edit;
    ModuleDBControl.QueryDev.FieldByName('name').AsString := EditDev.Text;
    ModuleDBControl.QueryDev.FieldByName('login').AsString := EditLogin.Text;
    ModuleDBControl.QueryDev.FieldByName('avatar').AsString := cxMemoPathAvatarUser.Text;
    if (EditNewPassword.Text <> '') or (EditRepeatNewPassword.Text <> '') then
    begin
      if EditNewPassword.Text = EditRepeatNewPassword.Text then
        ModuleDBControl.QueryDev.FieldByName('password').AsString := EditNewPassword.Text
      else
        LbIncorrectRepeatPassword.Visible := true;
    end;
    ModuleDBControl.QueryDev.Post;
    FormMain.cxUserShow(self);
  end
  else
  begin
    LbIncorrectPassword.Visible := true;
  end;
  EditNewPassword.Text:='';
  EditRepeatNewPassword.Text:='';
  EditOldPassword.Text:='';
end;

procedure TFrameMainUser.cxBtPathAvatarUserClick(Sender: TObject);
var
  i: integer;
  avatar: String;
begin
  //«¿√–”∆¿≈Ã ¿¬¿“¿– œŒÀ‹«Œ¬¿“≈Àﬂ
  ModuleDBControl.QueryDev.First;
  for i := 0 to StrToInt(FormStartMain.IdUser) - 1 do
    ModuleDBControl.QueryDev.Next;
  if OpenPictureDialogAvatar.Execute then
    cxMemoPathAvatarUser.Text:=OpenPictureDialogAvatar.FileName;
  ImageAvatarUser.Picture.LoadFromFile(cxMemoPathAvatarUser.Text);
end;

end.
