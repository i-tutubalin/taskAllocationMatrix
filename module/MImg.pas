unit MImg;

interface

uses
  SysUtils, Classes, ImgList, Controls;

type
  TModuleImg = class(TDataModule)
    ImageListCommon: TImageList;
    ImageListMainMenu: TImageList;
    ImageListMainTask: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModuleImg: TModuleImg;

implementation

{$R *.dfm}

end.
