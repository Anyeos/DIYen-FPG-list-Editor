unit progress;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  BGRAFlashProgressBar, BCPanel;

type

  { TFProgress }

  TFProgress = class(TForm)
    BCPanel1: TBCPanel;
    Panel1: TPanel;
    ProgressBar: TBGRAFlashProgressBar;
  private

  public

  end;

var
  FProgress: TFProgress;

implementation

{$R *.lfm}

end.

