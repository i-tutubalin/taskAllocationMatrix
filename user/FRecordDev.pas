unit FRecordDev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, DBCtrls, DB, Grids, DBGrids, Menus, StdCtrls;

type
  TFrameRecordDev = class(TFrame)
    DBGridDev: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses MDBControl;


{$R *.dfm}

end.
