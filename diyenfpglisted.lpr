program diyenfpged;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, lazrichview, lazcontrols, main, renombrar, progress
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='DIYen FPG list Editor';
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TFRenombrar, FRenombrar);
  Application.Run;
end.

