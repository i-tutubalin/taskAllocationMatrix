unit UNewTask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  TFormNewTask = class(TForm)
    GBRecord: TGroupBox;
    GBTask: TGroupBox;
    DBEditNameTask: TDBEdit;
    LbNameTask: TLabel;
    LbStatus: TLabel;
    LbNameDev: TLabel;
    LbDateNext: TLabel;
    LbDateEnd: TLabel;
    DBMemoTask: TDBMemo;
    PanelSaveAndExit: TPanel;
    LbTypeTask: TLabel;
    DBCBStatus: TDBComboBox;
    DateTimePickerDateNext: TDateTimePicker;
    DateTimePickerDateEnd: TDateTimePicker;
    DBEditIdDev: TDBEdit;
    CBIdDev: TComboBox;
    DBCBNameDev: TDBComboBox;
    DBCBTypeTask: TDBComboBox;
    LbIdDev: TLabel;
    cxBtSaveEndExit: TcxButton;
    procedure DateTimePickerDateNextChange(Sender: TObject);
    procedure DateTimePickerDateEndChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBCBNameDevChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxBtSaveEndExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNewTask: TFormNewTask;

implementation

uses MDBControl, MImg;

{$R *.dfm}

procedure TFormNewTask.DBCBNameDevChange(Sender: TObject);
begin
  //ÑÂßÇÛÂÀÅÌ ÈÍÄÅÊÑ ĞÀÇĞÀÁÎÒ×ÈÊÀ È ÈÌß ĞÀÇĞÀÁÎÒ×ÈÊÀ
  CBIdDev.Text := CBIdDev.Items[DBCBNameDev.ItemIndex];
  DBEditIdDev.Text := CBIdDev.Text;
end;

procedure TFormNewTask.cxBtSaveEndExitClick(Sender: TObject);
begin
  //ÑÎÕĞÀÍßÅÒ ÂÑÅ ÂÂÅÄÅÍÛÅ ÇÍÀ×ÅÍÈß È ÇÀÊĞÛÂÀÅÒ ÔÎĞÌÓ
  if ModuleDBControl.QueryTask.Modified then
    ModuleDBControl.QueryTask.Post;
  FormNewTask.Hide;
end;

procedure TFormNewTask.DateTimePickerDateEndChange(Sender: TObject);
var
  s: String;
begin
  //ÄÎÁÀÂËßÅÌ ÄÀÒÓ ÎÊÎÍ×ÀÍÈß ÇÀÄÀÍÈß Â ÁÄ
  ModuleDBControl.QueryTask.Edit;
  s:= copy(DateToStr(DateTimePickerDateEnd.Date),1,10); //âûğåçàåì âğåìÿ...
  ModuleDBControl.QueryTask.FieldValues['dateEnd'] := s;//DatePickerReceipt.Date
end;

procedure TFormNewTask.DateTimePickerDateNextChange(Sender: TObject);
var
  s: String;
begin
  //ÄÎÁÀÂËßÅÌ ÄÀÒÓ ÍÀ×ÀËÀ ÇÀÄÀÍÈß Â ÁÄ
  ModuleDBControl.QueryTask.Edit;
  s:= copy(DateToStr(DateTimePickerDateNext.Date),1,10); //âûğåçàåì âğåìÿ...
  ModuleDBControl.QueryTask.FieldValues['dateNext'] := s;//DatePickerReceipt.Date
end;

procedure TFormNewTask.FormCreate(Sender: TObject);
var
  name, idName: String;
  i: integer;
begin
  //ÇÀÏÎËÍßÅÌ ÑÏÈÑÎÊ ĞÀÇĞÀÁÎÒ×ÈÊÎÂ ÍÀ ÇÀÄÀÍÈÅ
  DBCBNameDev.Items.Clear;
  ModuleDBControl.QueryDev.First;
  for  i := 0 to ModuleDBControl.QueryDev.RecordCount - 1 do
  begin
    name := ModuleDBControl.QueryDev.FieldByName('name').AsString;
    DBCBNameDev.AddItem(name, self);

    idName := ModuleDBControl.QueryDev.FieldByName('id').AsString;
    CBIdDev.AddItem(idName, self);

    ModuleDBControl.QueryDev.Next;
  end;
end;

procedure TFormNewTask.FormShow(Sender: TObject);
begin
  //ÑÂßÇÛÂÀÅÌ ÈÍÄÅÊÑ ĞÀÇĞÀÁÎÒ×ÈÊÀ È ÈÌß ĞÀÇĞÀÁÎÒ×ÈÊÀ ÏĞÈ ÂÛÇÎÂÅ ÔÎĞÌÛ
  if DBEditIdDev.Text <> '' then
  begin
    DBCBNameDev.Text :=  DBCBNameDev.Items[StrToInt(DBEditIdDev.Text) - 1];
    CBIdDev.Text := DBEditIdDev.Text;
  end;
end;

end.
