program PriOfDiscoTools;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {MainU},
  UMainModule in 'UMainModule.pas' {MainModuleU: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainU, MainU);
  Application.CreateForm(TMainModuleU, MainModuleU);
  Application.Run;
end.
