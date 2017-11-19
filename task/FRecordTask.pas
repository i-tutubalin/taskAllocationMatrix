unit FRecordTask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, Menus, StdCtrls;

type
  TFrameRecordTask = class(TFrame)
    DBGridTask: TDBGrid;
    DBMemoTask: TDBMemo;
    Splitter1: TSplitter;
    procedure DBGridTaskDblClick(Sender: TObject);
    procedure DBGridTaskTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses MDBControl, UMain, UNewTask;


{$R *.dfm}

procedure TFrameRecordTask.DBGridTaskDblClick(Sender: TObject);
begin
  //�������� ������ ������
  FormNewTask.Show;
end;

procedure TFrameRecordTask.DBGridTaskTitleClick(Column: TColumn);
begin
  //���������� �� �������� � �����������
  with ModuleDBControl.QueryTask do
  begin
    if Sort = Column.FieldName + ' ASC' then
      Sort := Column.FieldName + ' DESC'
    else
      Sort := Column.FieldName + ' ASC';
  end;
end;

end.
