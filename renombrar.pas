unit renombrar;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics,
  Dialogs, StdCtrls, ActnList, Spin, BCListBox, BCMDButton, BCPanel, BCButton,
  BCLabel, RichView, RVStyle, LCLType;

type

  { TFRenombrar }

  TFRenombrar = class(TForm)
    BCPaperPanel2: TBCPaperPanel;
    Cancel: TAction;
    EdIndex: TSpinEdit;
    Ok: TAction;
    ActionList1: TActionList;
    BCButton1: TBCButton;
    BCButton2: TBCButton;
    BCLabel1: TBCLabel;
    BCLabel2: TBCLabel;
    BCPanel1: TBCPanel;
    BCPaperPanel1: TBCPaperPanel;
    EdName: TEdit;
    Nota: TRichView;
    RVStyle1: TRVStyle;
    procedure CancelExecute(Sender: TObject);
    procedure EdChange(Sender: TObject);
    procedure EdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OkExecute(Sender: TObject);
  private

  public

  end;

var
  FRenombrar: TFRenombrar;

implementation
uses main;

{$R *.lfm}

{ TFRenombrar }

procedure TFRenombrar.CancelExecute(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure RefreshNota;
var
  str: String;
  str2: String;
begin
  with FRenombrar.Nota do
  begin
  Clear();

  AddTextFromNewLine('Old: ', 1);
  FmtStr(str, '%.2d', [Indice]);
  AddTextFromNewLine(str+Nombre, 0);
  AddBreak();

  AddTextFromNewLine('New: ', 1);
  FmtStr(str, '%.2d', [FRenombrar.EdIndex.Value]);

  str2 := FRenombrar.EdName.Text;
  if ExtractFileExt(str2) <> '.png' then
    str2 := str2+'.png';

  AddTextFromNewLine(str+str2, 0);
  AddBreak();

  Format();
  Paint();
  end;
end;

procedure TFRenombrar.EdChange(Sender: TObject);
begin
  RefreshNota;
end;

procedure TFRenombrar.EdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    OkExecute(Sender);
  if Key = VK_ESCAPE then
    CancelExecute(Sender);
end;

procedure TFRenombrar.FormCreate(Sender: TObject);
begin
end;

procedure TFRenombrar.FormShow(Sender: TObject);
begin
  EdIndex.Value:=Indice;
  EdName.Text:=ExtractFileNameWithoutExt(Nombre);
  RefreshNota;

  EdName.SelectAll;
  EdName.SetFocus;
end;

procedure TFRenombrar.OkExecute(Sender: TObject);
begin
  ModalResult:=mrOK;
end;

end.

