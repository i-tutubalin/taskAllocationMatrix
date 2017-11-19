unit FMainTask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, FRecordTask, FRecordDev, StdCtrls, Mask, DBCtrls, Menus,
  ImgList, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxSkinXmas2008Blue, cxButtons, cxClasses, cxPropertiesStore;

type
  TFrameMainTask = class(TFrame)
    PanelFun: TPanel;
    PanelDev: TPanel;
    FrameRecordDev: TFrameRecordDev;
    PanelTask: TPanel;
    FrameRecordTask: TFrameRecordTask;
    DBEditRelationsTableDevAndTask: TDBEdit;
    PMMain: TPopupMenu;
    Splitter2: TSplitter;
    CBSortStatus: TComboBox;
    LbSortStatus: TLabel;
    PMPanelTask: TPopupMenu;
    addrecord2: TMenuItem;
    editrecord2: TMenuItem;
    deleterecord2: TMenuItem;
    N1: TMenuItem;
    cxBtAddRecord: TcxButton;
    cxBtEditRecord: TcxButton;
    cxBtDeleteRecord: TcxButton;
    refresh1: TMenuItem;
    refresh2: TMenuItem;
    procedure CBSortStatusChange(Sender: TObject);
    procedure DBEditRelationsTableDevAndTaskChange(Sender: TObject);
    procedure cxBtAddRecordClick(Sender: TObject);
    procedure cxBtEditRecordClick(Sender: TObject);
    procedure cxBtDeleteRecordClick(Sender: TObject);
    procedure refreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses MDBControl, UDeleteTask, UNewTask, MImg, UMain;

{$R *.dfm}

procedure TFrameMainTask.CBSortStatusChange(Sender: TObject);
var statusNew:string;
begin
  //—Œ–“»¬–Œ ¿ œŒ —“¿“”—” «¿ƒ¿Õ»ﬂ
  statusNew:= QuotedStr(CBSortStatus.Text);
  with ModuleDBControl.QueryTask do
  begin
    Close;
    SQL.Clear;
    SQL.Text:=
      'Select t.* ' +
      'From task t ' +
      'Where status = ' + statusNew;
    Open;
  end;
end;

procedure TFrameMainTask.cxBtAddRecordClick(Sender: TObject);
begin
  //ƒŒ¡¿¬Àﬂ≈Ã ¬ “¿¡À»÷” «¿ƒ¿Õ»… ÕŒ¬€≈ «¿œ»—»
  ModuleDBControl.QueryTask.Append;
  FormNewTask.Show;
end;

procedure TFrameMainTask.cxBtDeleteRecordClick(Sender: TObject);
begin
  //”ƒ¿Àﬂ≈“ ¬€¡–¿Õ”ﬁ «¿œ»—‹ »« “¿¡À»÷€ «¿ƒ¿Õ»…
  FormDeleteTask.ShowModal;
end;

procedure TFrameMainTask.cxBtEditRecordClick(Sender: TObject);
begin
  //»«Ã≈Õﬂ≈Ã ƒ¿ÕÕ€≈ ¬ “¿¡À»÷≈ «¿ƒ¿Õ»…
  FormNewTask.Show;
end;

procedure TFrameMainTask.DBEditRelationsTableDevAndTaskChange(Sender: TObject);
const
  DEFAULT_IDDEV = '1';
var
  idDev: String;
begin
  //—¬ﬂ«€¬¿Õ»≈ ƒ¬”’ “¿¡À»÷(dev Ë task) ◊≈–≈«  Œ—“€À‹
  idDev := DBEditRelationsTableDevAndTask.Text;
  if idDev = '' then
    idDev := DEFAULT_IDDEV;
  with ModuleDBControl.QueryTask do
  begin
    Close;
    SQL.Clear;
    SQL.Text:=
        'Select t.* ' +
        'From task t ' +
        'Where idDev = ' + idDev;
    Open;
  end;

end;

procedure TFrameMainTask.refreshClick(Sender: TObject);
begin
  //Œ¡ÕŒ¬À≈Õ»≈ ¡ƒ
  FormMain.refresh1Click(self);
end;

end.
