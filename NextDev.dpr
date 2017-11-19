program NextDev;

uses
  Forms,
  UMain in 'starProgramm\UMain.pas' {FormMain},
  FRecordDev in 'user\FRecordDev.pas' {FrameRecordDev: TFrame},
  MDBControl in 'module\MDBControl.pas' {ModuleDBControl: TDataModule},
  FRecordTask in 'task\FRecordTask.pas' {FrameRecordTask: TFrame},
  UNewTask in 'task\UNewTask.pas' {FormNewTask},
  UDeleteTask in 'task\UDeleteTask.pas' {FormDeleteTask},
  UStartMain in 'starProgramm\UStartMain.pas' {FormStartMain},
  FMainTask in 'task\FMainTask.pas' {FrameMainTask: TFrame},
  MImg in 'module\MImg.pas' {ModuleImg: TDataModule},
  FMainUser in 'user\FMainUser.pas' {FrameMainUser: TFrame},
  FMainStatist in 'statist\FMainStatist.pas' {FrameMainStatist: TFrame},
  FMainAbout in 'about\FMainAbout.pas' {FrameMainAbout: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TModuleDBControl, ModuleDBControl);
  Application.CreateForm(TFormNewTask, FormNewTask);
  Application.CreateForm(TFormDeleteTask, FormDeleteTask);
  Application.CreateForm(TFormStartMain, FormStartMain);
  Application.CreateForm(TModuleImg, ModuleImg);
  Application.Run;
end.
