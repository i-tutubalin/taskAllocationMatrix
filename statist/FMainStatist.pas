unit FMainStatist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, TeEngine, ExtCtrls, TeeProcs, Chart, DBChart, Series, FRecordDev,
  GanttCh, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, StdCtrls, cxRadioGroup,
  TeeFunci;

type
  TFrameMainStatist = class(TFrame)
    DBChartStatistTask: TDBChart;
    FrameRecordDev: TFrameRecordDev;
    Series1: TGanttSeries;
    cxRGSwithChart: TcxGroupBox;
    cxRBStatistTask: TcxRadioButton;
    cxRBStatistAppraisal: TcxRadioButton;
    DBChartStatistAppraisal: TDBChart;
    Series2: TLineSeries;
    PanelNoChart: TPanel;
    TeeFunction1: TCustomTeeFunction;
    procedure cxRBStatistAppraisalClick(Sender: TObject);
    procedure cxRBStatistTaskClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses MDBControl, UMain, FRecordTask;

{$R *.dfm}

procedure TFrameMainStatist.cxRBStatistTaskClick(Sender: TObject);
begin
  //¬ Àﬁ◊¿≈Ã √–¿‘»  ¬€œŒÀÕ≈Õ»ﬂ «¿ƒ¿Õ»…
  DBChartStatistTask.Align := alClient;
  DBChartStatistAppraisal.Visible:=false;
  DBChartStatistTask.Visible := true;
end;

procedure TFrameMainStatist.cxRBStatistAppraisalClick(Sender: TObject);
begin
  //¬ Àﬁ◊¿≈Ã √–¿‘»  Œ÷≈Õ »
  DBChartStatistAppraisal.Align := alClient;
  DBChartStatistTask.Visible:=false;
  DBChartStatistAppraisal.Visible := true;
end;

end.
