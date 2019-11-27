unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ActnList, ComCtrls, ExtCtrls, StdCtrls, MaskEdit, Spin, ExtDlgs,
  BCToolBar, BGRAImageList,
  BCListBox, BCLabel,
  BGRAVirtualScreen, RVStyle, RichView, LCLType,
  inifiles, math, BGRABitmap, BGRABitmapTypes, BGRATransform;

type

  { TFmain }

  TFmain = class(TForm)
    AutoZoom: TCheckBox;
    FpgNuevoDir: TAction;
    FpgBorrar: TAction;
    FpgAgregar: TAction;
    DrawSelectedBound: TAction;
    DrawBounds: TAction;
    BCToolBar4: TBCToolBar;
    GroupBounds: TGroupBox;
    MenuItem10: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem9: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    SaveDialog1: TSaveDialog;
    ToolButton1: TToolButton;
    ToolButton14: TToolButton;
    ToolButton17: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton9: TToolButton;
    ZoomScale: TFloatSpinEdit;
    FPGColorFondo: TColorButton;
    Label1: TLabel;
    ListInfo: TPanel;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    PopupMenu1: TPopupMenu;
    MapInfo: TRichView;
    RVStyle1: TRVStyle;
    ScrollScreen: TScrollBox;
    ToolButton8: TToolButton;
    UtilRotateCW: TAction;
    BoundAutoClean: TAction;
    BoundFileBorrar: TAction;
    BoundFileSalvar: TAction;
    FpgRenombrar: TAction;
    FpgRefrescar: TAction;
    BCToolBar3: TBCToolBar;
    Miniaturas: TBGRAImageList;
    SelectDirectoryDialog1: TSelectDirectoryDialog;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton18: TToolButton;
    VistaFPG: TListView;
    Screen: TBGRAVirtualScreen;
    UtilAutoRect: TAction;
    UtilAutoFCuad: TAction;
    UtilCenter: TAction;
    BCLabel7: TBCLabel;
    BCLabel8: TBCLabel;
    BoundAbajo: TAction;
    BoundArriba: TAction;
    BoundBorrar: TAction;
    BoundAgregar: TAction;
    BCLabel1: TBCLabel;
    BCLabel2: TBCLabel;
    BCLabel3: TBCLabel;
    BCLabel4: TBCLabel;
    BCLabel5: TBCLabel;
    BCLabel6: TBCLabel;
    BCToolBar2: TBCToolBar;
    BTipo: TComboBox;
    EdR: TSpinEdit;
    MainPanel: TBCPaperPanel;
    BCToolBar1: TBCToolBar;
    Iconos: TBGRAImageList;
    EdX: TSpinEdit;
    EdW: TSpinEdit;
    EdY: TSpinEdit;
    EdH: TSpinEdit;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    ListBounds: TListBox;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    PanelPosition: TPanel;
    PanelSize: TPanel;
    PanelRadius: TPanel;
    Salir: TAction;
    FpgAbrirDir: TAction;
    Acciones: TActionList;
    MenuPrincipal: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    BarraEstado: TStatusBar;
    Splitter1: TSplitter;
    TabsBounds: TTabControl;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    procedure BoundAbajoExecute(Sender: TObject);
    procedure BoundAgregarExecute(Sender: TObject);
    procedure BoundArribaExecute(Sender: TObject);
    procedure BoundAutoCleanExecute(Sender: TObject);
    procedure BoundBorrarExecute(Sender: TObject);
    procedure BoundFileBorrarExecute(Sender: TObject);
    procedure BoundFileSalvarExecute(Sender: TObject);
    procedure BTipoChange(Sender: TObject);
    procedure BTipoCloseUp(Sender: TObject);
    procedure DrawBoundsExecute(Sender: TObject);
    procedure DrawSelectedBoundExecute(Sender: TObject);
    procedure EdRExit(Sender: TObject);
    procedure EdRKeyPress(Sender: TObject; var Key: char);
    procedure EdSetData(Sender: TObject);
    procedure EdDataKeyPress(Sender: TObject; var Key: char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FpgAbrirDirExecute(Sender: TObject);
    procedure FpgAgregarExecute(Sender: TObject);
    procedure FpgBorrarExecute(Sender: TObject);
    procedure FPGColorFondoColorChanged(Sender: TObject);
    procedure FpgNuevoDirExecute(Sender: TObject);
    procedure FpgNuevoExecute(Sender: TObject);
    procedure FpgRefrescarExecute(Sender: TObject);
    procedure FpgRenombrarExecute(Sender: TObject);
    procedure ListBoundsDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ListBoundsDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListBoundsSelectionChange(Sender: TObject; User: boolean);
    procedure MainPanelResize(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure ScreenMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ScreenMouseLeave(Sender: TObject);
    procedure ScreenMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure ScreenMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ScreenRedraw(Sender: TObject; Bitmap: TBGRABitmap);
    procedure TabsBoundsChange(Sender: TObject);
    procedure TabsBoundsChanging(Sender: TObject; var AllowChange: Boolean);
    procedure UtilAutoFCuadExecute(Sender: TObject);
    procedure UtilAutoRectExecute(Sender: TObject);
    procedure UtilCenterExecute(Sender: TObject);
    procedure VistaFPGClick(Sender: TObject);
    procedure VistaFPGKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure VistaFPGKeyPress(Sender: TObject; var Key: char);
    procedure VistaFPGKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure VistaFPGSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure ZoomScaleKeyPress(Sender: TObject; var Key: char);
  private

  public
    procedure VistaFPGload;
    procedure FpgRefrescarActual;
    procedure BitmapPantallaRedraw;
    function BoundsModificadaContinuar: Boolean;
  end;


  TImagenMap = class(TBGRABitmap)
  public
    fNombre: string;
    fPath: string;
    modificada : boolean;
  end;

  function ExtraerIndice( s: String ): Integer;
  function ExtraerNombre( s: String ): String;
  function IndiceToString( i: Integer ): String;

const
  TAB_POINT = 0;
  TAB_COLLISION = 1;
  TAB_HIT = 2;

  APP_TITLE = 'DIYen FPG list Editor';

  INDEX_AA_SQUARE = 0;
  INDEX_AA_RECT   = 1;
  INDEX_CIRCLE    = 2;
  INDEX_RECTANGLE = 3;
  INDEX_POINT     = 4;

  DIRECTORY_COLLISION = 'collision';

var
  Fmain: TFmain;
  Config: TIniFile;

  Modified: Boolean = False;
  WorkingDirectory: String = '';

  BitmapPantalla: TBGRABitmap = nil;
  Imagen: TImagenMap = nil;

  Nombre: String = '';
  Indice: Integer = 1;
  UsoDisco: Integer = 0;

  Point0 : TPoint;

  Points : TStringList;
  Collisions : TStringList;
  Hits : TStringList;

  mouse_x: integer = 0;
  mouse_y: integer = 0;
  mouse_down: Boolean = false;

  //Zoom : single = 1.0;
  ImagenRect: TRect;

  BoundsModificada: Boolean;
  //TabIndexOld: integer = 0;

  {$IFDEF LCLgtk2}
  SColorSel: TBGRAPixel = (red: 50; green: 70; blue: 255; alpha: 150);
  SColorCBB: TBGRAPixel = (red: 50; green: 220; blue: 50; alpha: 200);
  {$ELSE}
  SColorSel: TBGRAPixel = (blue: 255; green: 70; red: 50; alpha: 150);
  SColorCBB: TBGRAPixel = (blue: 50; green: 220; red: 50; alpha: 200);
  {$ENDIF}


  // FIXME: Algo pasa con TListView que lleva el índice interno pero
  // ItemIndex sigue siendo el índice viejo cuando hago un .Clear y le doy
  // nuevamente los valores, al seleccionar otro item el item se selecciona
  // pero ItemIndex no actualiza su valor.
  // Por ahora uso un índice externo.
  //myIndex: Integer = 0;

  // FIXME: Habría que encontrar la mejor forma de hacerlo.
  // Al cargar la configuración y establecerle ButtonColor al botón de
  // color, si el color es distinto al de design time, entonces el evento
  // OnChanged se ejecuta y refresca y recarga el FPG.
  // Pero si es el mismo color, no lo hace.
  Refrescado : Boolean = false;

implementation
uses renombrar, progress;

{$R *.lfm}

{ TFmain }

procedure TFmain.SalirExecute(Sender: TObject);
begin
  Close;
end;

procedure TFmain.ScreenMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  despx, despy : Integer;
begin
  mouse_down := true;
  ScreenMouseMove(Sender, Shift, X, Y);
end;

procedure TFmain.ScreenMouseLeave(Sender: TObject);
begin
  mouse_down := false;
end;

procedure TFmain.ScreenMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  despx, despy: Integer;
begin
  if not mouse_down then Exit;
  mouse_x := X;
  mouse_y := Y;
  if Imagen <> nil then
  begin
    despx := Point0.x;
    despy := Point0.y;
    if TabsBounds.TabIndex = TAB_POINT then
      if ListBounds.ItemIndex = 0 then
      begin
        despx := 0;
        despy := 0;
      end;

    EdX.Value:=
      Trunc((X-Screen.Width / 2) / ZoomScale.Value) + Imagen.Width div 2 - despx;
    EdY.Value:=
      Trunc((Y-Screen.Height / 2) / ZoomScale.Value) + Imagen.Height div 2 - despy;

    EdSetData(Sender);
  end;

  Screen.RedrawBitmap;
end;

procedure TFmain.ScreenMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  mouse_down := false;
end;


procedure ObtenerPointVals(val : PChar; valx, valy: PPChar);
var
  vals : PChar;
begin
  vals := strscan(val, ',');
  valx^ := StrAlloc(vals-val+1);
  strlcopy(valx^, val, vals-val);

  valy^ := StrAlloc(StrLen(vals));
  strlcopy(valy^, vals+1, StrLen(vals));
end;

procedure ObtenerColVals(val : PChar; valt, valx, valy, valw, valh: PPChar);
var
  vals : PChar;
begin
  vals := strscan(val, '=');
  valt^ := StrAlloc(vals-val+1);
  strlcopy(valt^, val, vals-val);

  val := strscan(vals+1, ',');
  valx^ := StrAlloc(val-vals);
  strlcopy(valx^, vals+1, val-vals-1);

  vals := strscan(val+1, ' ');
  valy^ := StrAlloc(vals-val);
  strlcopy(valy^, val+1, vals-val-1);

  val := strscan(vals+1, 'x');
  valw^ := StrAlloc(val-vals);
  strlcopy(valw^, vals+1, val-vals-1);

  valh^ := StrAlloc(StrLen(val));
  strlcopy(valh^, val+1, StrLen(val));
end;

procedure TFmain.ScreenRedraw(Sender: TObject; Bitmap: TBGRABitmap);
var
  Val : PChar = '';
  valt, valx, valy, valw, valh : PChar;
  x, y, w, h, r : integer;
  scx, scy : integer; // Screen center
  n : integer;
begin
  if BitmapPantalla = nil then Exit;
  Bitmap.PutImage(0,0, BitmapPantalla, dmSet, 255);
  scx := BitmapPantalla.Width div 2 - Trunc(Imagen.Width*ZoomScale.Value / 2);
  scy := BitmapPantalla.Height div 2 - Trunc(Imagen.Height*ZoomScale.Value / 2);

  // Detectamos el Punto0 sí o sí
  if Points.Count > 0 then
  begin
    Val := StrAlloc(Length(Points[0])+1);
    StrPCopy(Val, Points[0]);
    ObtenerPointVals(val, @valx, @valy);
    //StrDispose(Val);
    Point0.x := StrToIntDef(valx, Imagen.Width div 2); StrDispose(valx);
    Point0.y := StrToIntDef(valy, Imagen.Height div 2); StrDispose(valy);
  end;

  case TabsBounds.TabIndex of
  TAB_POINT:
    with ListBounds do
    for n := 0 to Count-1 do
    begin
      Val := StrAlloc(Length(Items[0])+1);
      StrPCopy(val, Items[n]);
      ObtenerPointVals(val, @valx, @valy);
      //StrDispose(Val);
      x := StrToIntDef(valx, 0); StrDispose(valx);
      y := StrToIntDef(valy, 0); StrDispose(valy);
      if n <> 0 then // Si no es el Punto0 entonces se suma al Punto0
      begin
        x := Point0.x+x;
        y := Point0.y+y;
      end else
      begin // Si es el Punto0 entonces se actualiza
        Point0.x := x;
        Point0.y := y;
      end;
      x := Trunc(x*ZoomScale.Value)+scx; // Transportamos a la pantalla
      y := Trunc(y*ZoomScale.Value)+scy;
      w := 8; h := 8;
      if DrawBounds.Checked then
        if n <> 0 then
        begin
          BitMap.DrawLine(x-w, y, x+w, y, CSSRed, true, dmXor);
          BitMap.DrawLine(x, y-h, x, y+h, CSSRed, true, dmXor);
        end else
        begin // El punto cero se destaca
        BitMap.DrawLine(x-w*10, y, x+w*10, y, CSSRed, true, dmXor);
        BitMap.DrawLine(x, y-h*10, x, y+h*10, CSSRed, true, dmXor);
        end;
      if Selected[n] then
      begin
        if DrawSelectedBound.Checked then
        begin
          BitMap.DrawLine(x-w div 2, y, x+w div 2, y, CSSWhite, true, dmXor);
          BitMap.DrawLine(x, y-h div 2, x, y+h div 2, CSSWhite, true, dmXor);
        end;
      end;
    end;
  otherwise
    with ListBounds do
    for n := 0 to Count-1 do
    begin
    Val := StrAlloc(Length(Items[0])+1);
    StrPCopy(val, Items[n]);
    ObtenerColVals(val, @valt, @valx, @valy, @valw, @valh);
    //StrDispose(Val);
    x := StrToIntDef(valx, 0); StrDispose(valx);
    y := StrToIntDef(valy, 0); StrDispose(valy);

    // Transportamos a la pantalla
    x := Trunc((Point0.x+x)*ZoomScale.Value)+scx;
    y := Trunc((Point0.y+y)*ZoomScale.Value)+scy;

    w := StrToIntDef(valw, 0); StrDispose(valw);
    h := StrToIntDef(valh, 0); StrDispose(valh);

    w := Trunc(w*ZoomScale.Value);
    h := Trunc(h*ZoomScale.Value);

    r := 0;
    if SameText(valt, 'AA_SQUARE') then
      if w <> 0 then r := w else r := h;
    if r <> 0 then
    begin
      w := r;
      h := r;
    end;

    if Selected[n] then
    if DrawSelectedBound.Checked then
    begin
      if SameText(valt, 'CIRCLE') then
      begin
        if w <> 0 then r := w else r := h;
        Bitmap.FillEllipseLinearColorAntialias(x, y, r, r, SColorSel, SColorSel);
      end else
        Bitmap.FillRectAntialias(x, y, x+w, y+h, SColorSel, true);
    end;

    if DrawBounds.Checked then
    begin
      if SameText(valt, 'CIRCLE') then
      begin
        if w <> 0 then r := w else r := h;
        Bitmap.EllipseAntialias(x, y, r, r, SColorCBB, 3);
      end else
        Bitmap.RectangleAntialias(x, y, x+w, y+h, SColorCBB, 3);
    end;

    StrDispose(valt);
    end;
  end;


  Bitmap.DrawLine(0, mouse_y, BitmapPantalla.Width, mouse_y, CSSRed, true, dmXor);
  Bitmap.DrawLine(mouse_x, 0, mouse_x, BitmapPantalla.Height, CSSRed, true, dmXor);
end;




procedure TFmain.BitmapPantallaRedraw;
var
  dstWidth, dstHeight : integer;
begin
  if BitmapPantalla = nil then BitmapPantalla := TBGRABitmap.Create;

  if Imagen <> nil then
  begin
    Screen.Width := ScrollScreen.Width;
    Screen.Height := ScrollScreen.Height;
    Screen.Left := 0;
    Screen.Top := 0;

    if AutoZoom.Checked then
    begin
      dstWidth:=Trunc(ScrollScreen.Width * 0.6);
      dstHeight:=Trunc(ScrollScreen.Height * 0.6);

      with Imagen do
      begin
        if (Width > Height) then
        begin
          ZoomScale.Value := dstWidth / Width;
        end else
        begin
          ZoomScale.Value := dstHeight / Height;
        end;
      end;
    end else
    begin
      if ((Imagen.Width*ZoomScale.Value) > Screen.Width) or
        ((Imagen.Height*ZoomScale.Value) > Screen.Height)
      then
      begin
        Screen.Width := Trunc(Imagen.Width*ZoomScale.Value*1.1);
        Screen.Height := Trunc(Imagen.Height*ZoomScale.Value*1.1);
      end;

    end;

    BitmapPantalla.SetSize(Screen.Width, Screen.Height);

    ImagenRect.Width := Trunc(Imagen.Width*ZoomScale.Value);
    ImagenRect.Height:= Trunc(Imagen.Height*ZoomScale.Value);

    ImagenRect.SetLocation(
        Screen.Width div 2 - ImagenRect.Width div 2,
        Screen.Height div 2 - ImagenRect.Height div 2);


    BitmapPantalla.Fill(FPGColorFondo.ButtonColor);
    BitmapPantalla.StretchPutImage(ImagenRect, Imagen, dmFastBlend, 255);

    BitmapPantalla.Rectangle(ImagenRect.Left, ImagenRect.Top,
                    ImagenRect.Width+ImagenRect.Left,
                    ImagenRect.Height+ImagenRect.Top,
                    CSSWhite, BGRAPixelTransparent, dmXor);

    with ScrollScreen.VertScrollBar do
      Position:=  (Range-Page) div 2;
    with ScrollScreen.HorzScrollBar do
      Position:=  (Range-Page) div 2;
  end;

  Screen.RedrawBitmap;
end;




procedure TFmain.EdRExit(Sender: TObject);
begin
  EdW.Value:=EdR.Value;
  EdH.Value:=EdR.Value;
end;

procedure TFmain.BoundAutoCleanExecute(Sender: TObject);
begin
  BoundAutoClean.Checked := not BoundAutoClean.Checked;
  //Config.WriteBool('Bounds', 'auto_clean', BoundAutoClean.Checked);
end;

procedure TFmain.BoundBorrarExecute(Sender: TObject);
var
  n : integer;
begin
  with ListBounds do
    for n := 0 to Count-1 do
    if Selected[n] then
    begin
      Items.Delete(n);
      BoundsModificada:=true;
    end;
end;

procedure TFmain.BoundFileBorrarExecute(Sender: TObject);
var
  was_autoclean: Boolean;
begin
  (*if MessageDlg('Warning',
  'You are about to delete the bounds file.'+LineEnding+
  'Continue?', mtWarning, [mbYes, mbNo], 0) = mrNo then
  Exit;*)
  was_autoclean:=BoundAutoClean.Checked;
  BoundAutoClean.Checked := False;

  case TabsBounds.TabIndex of
  TAB_POINT:
    DeleteFile(
      WorkingDirectory+DirectorySeparator+DIRECTORY_COLLISION+DirectorySeparator+
      IndiceToString(Indice)+Nombre+'.pt');
  TAB_COLLISION:
    DeleteFile(
      WorkingDirectory+DirectorySeparator+DIRECTORY_COLLISION+DirectorySeparator+
      IndiceToString(Indice)+Nombre+'.cb');
  TAB_HIT:
    DeleteFile(
      WorkingDirectory+DirectorySeparator+DIRECTORY_COLLISION+DirectorySeparator+
      IndiceToString(Indice)+Nombre+'.hb');
  end;

  if BoundAutoClean.Checked then ListBounds.Items.Clear;

  VistaFPGload;
  BoundAutoClean.Checked := was_autoclean;
  //BoundsModificada:=True;
end;

procedure TFmain.BoundFileSalvarExecute(Sender: TObject);
begin
  case TabsBounds.TabIndex of
  TAB_POINT:
    ListBounds.Items.SaveToFile(
      WorkingDirectory+DirectorySeparator+DIRECTORY_COLLISION+DirectorySeparator+
      IndiceToString(Indice)+Nombre+'.pt');
  TAB_COLLISION:
    ListBounds.Items.SaveToFile(
      WorkingDirectory+DirectorySeparator+DIRECTORY_COLLISION+DirectorySeparator+
      IndiceToString(Indice)+Nombre+'.cb');
  TAB_HIT:
    ListBounds.Items.SaveToFile(
      WorkingDirectory+DirectorySeparator+DIRECTORY_COLLISION+DirectorySeparator+
      IndiceToString(Indice)+Nombre+'.hb');
  end;

  BoundsModificada := false;
  VistaFPGload;
end;

procedure TFmain.BoundArribaExecute(Sender: TObject);
begin
  If ListBounds.ItemIndex-1 > -1 then
  begin
    ListBounds.Items.Move(ListBounds.ItemIndex, ListBounds.ItemIndex-1);
    BoundsModificada:=true;
  end;
end;

procedure TFmain.BoundAbajoExecute(Sender: TObject);
begin
  If ListBounds.ItemIndex+1 < ListBounds.Count then
  begin
    ListBounds.Items.Move(ListBounds.ItemIndex, ListBounds.ItemIndex+1);
    BoundsModificada:=true;
  end;
end;

procedure TFmain.BoundAgregarExecute(Sender: TObject);
begin
  with ListBounds do
  begin
    case TabsBounds.TabIndex of
    TAB_POINT:
      begin
      ItemIndex :=
      Items.Add(EdX.Text+','+EdY.Text);
      end;
    otherwise
      ItemIndex :=
      Items.Add(
      BTipo.Text+'='+EdX.Text+','+EdY.Text+' '+EdW.Text+'x'+EdH.Text);
      if Count =  1 then UtilAutoFCuadExecute(Sender);
    end;
  end;
end;

procedure TFmain.BTipoChange(Sender: TObject);
begin
  EdSetData(Sender);
end;

procedure TFmain.BTipoCloseUp(Sender: TObject);
begin
  PanelRadius.Visible:=False;
  PanelSize.Visible:=False;
  case BTipo.ItemIndex of
  INDEX_AA_SQUARE: PanelRadius.Visible:=True;
  INDEX_CIRCLE: PanelRadius.Visible:=True;
  otherwise
  PanelSize.Visible := True;
  end;
end;

procedure TFmain.DrawBoundsExecute(Sender: TObject);
begin
  DrawBounds.Checked := not DrawBounds.Checked;
  Config.WriteBool('Main', 'draw_bounds', DrawBounds.Checked);
  Screen.RedrawBitmap;
end;

procedure TFmain.DrawSelectedBoundExecute(Sender: TObject);
begin
  DrawSelectedBound.Checked := not DrawSelectedBound.Checked;
  Config.WriteBool('Main', 'draw_selected', DrawSelectedBound.Checked);
  Screen.RedrawBitmap;
end;


procedure TFmain.EdRKeyPress(Sender: TObject; var Key: char);
begin
  if Ord(Key) = VK_RETURN then
  begin
    EdRExit(Sender);
    EdSetData(Sender);
  end;
end;

procedure TFmain.EdSetData(Sender: TObject);
begin
  if
    (BTipo.ItemIndex = INDEX_AA_SQUARE) or
    (BTipo.ItemIndex = INDEX_CIRCLE)
    then
  begin
    if EdW.Value <> 0 then
      EdR.Value:=EdW.Value
    else
      EdR.Value:=EdH.Value;

    EdW.Value:=EdR.Value;
    EdH.Value:=EdR.Value;
  end;

  with ListBounds do
  if ItemIndex > -1 then
  begin
    case TabsBounds.TabIndex of
    TAB_POINT:
      begin
      Items[ItemIndex] :=
      EdX.Text+','+EdY.Text;
      BoundsModificada := True;
      end;
    otherwise
      Items[ItemIndex] :=
      BTipo.Text+'='+EdX.Text+','+EdY.Text+' '+EdW.Text+'x'+EdH.Text;
      BoundsModificada := True;
    end;
  end;

  Screen.RedrawBitmap;
end;

procedure TFmain.EdDataKeyPress(Sender: TObject; var Key: char);
begin
  if Ord(Key) = VK_RETURN then EdSetData(Sender);
end;

procedure TFmain.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  if not BoundsModificadaContinuar then CanClose:=false;
end;

procedure TFmain.FormCreate(Sender: TObject);
begin
  Fmain.Caption:=APP_TITLE;

  Points := TStringList.Create();
  Collisions := TStringList.Create();
  Hits := TStringList.Create();

  Config := TIniFile.Create(GetAppConfigDir(false)+'main.conf');


  Fmain.Width := Config.ReadInteger('Window', 'width', Fmain.Width);
  Fmain.Height := Config.ReadInteger('Window', 'height', Fmain.Height);

  MainPanel.Width := Config.ReadInteger('Main', 'width', MainPanel.Width);
  MainPanel.Height := Config.ReadInteger('Main', 'height', MainPanel.Height);

  TabsBounds.TabIndex := Config.ReadInteger('Bounds', 'tab', 1);

  DrawBounds.Checked := Config.ReadBool('Main', 'draw_bounds', true);
  DrawSelectedBound.Checked := Config.ReadBool('Main', 'draw_selected', true);
  //BoundAutoClean.Checked := Config.ReadBool('Bounds', 'auto_clean', true);

  OpenPictureDialog1.FileName :=
    Config.ReadString('FPG', 'LastAddedPictures', OpenPictureDialog1.FileName);

  WorkingDirectory := Config.ReadString('FPG', 'workdir', WorkingDirectory);
  SelectDirectoryDialog1.FileName := WorkingDirectory;
  FPGColorFondo.ButtonColor := StringToColor(Config.ReadString('FPG', 'fondo', 'clOlive'));
  if not Refrescado then
    FpgRefrescarExecute(Sender);
end;

procedure TFmain.FormResize(Sender: TObject);
begin
  Config.WriteInteger('Window', 'width', Fmain.Width);
  Config.WriteInteger('Window', 'height', Fmain.Height);
end;

procedure TFmain.FpgAbrirDirExecute(Sender: TObject);
var
  mResult: TModalResult;
begin
  if SelectDirectoryDialog1.Execute then
    begin
      mResult:=mrNo;

      if Modified then
      begin
        mResult :=
        MessageDlg('Atención',
        'Hay cambios sin salvar.'+LineEnding+'¿Deseas salvar los cambios ahora?',
        mtWarning, [mbYes, mbNo, mbCancel], 0);

        if mResult = mrYes then
          FpgRefrescarExecute(Sender);
      end;

      if mResult <> mrCancel then
      begin
        WorkingDirectory := SelectDirectoryDialog1.FileName;
        Config.WriteString('FPG', 'workdir', WorkingDirectory);
        FpgNuevoExecute(Sender);
        FpgRefrescarExecute(Sender);
      end;

    end;
end;

procedure TFmain.FpgAgregarExecute(Sender: TObject);
var
  fName: String;
  fFull: String;
  lastindex, n : Integer;
begin
  with OpenPictureDialog1 do
    if Execute then
    begin
      lastindex := 0;
      with VistaFPG do
        if Items.Count > 0 then
          lastindex := ExtraerIndice(Items[Items.Count-1].Caption);

      for n := 0 to Files.Count-1 do
      begin
        fFull := Files[n];
        fName := ExtractFileName(fFull);
        Inc(lastindex);
        CopyFile(fFull, WorkingDirectory+DirectorySeparator+IntToStr(lastindex)+fName);
      end;
      Config.WriteString('FPG', 'LastAddedPictures', FileName);

      FpgRefrescarExecute(Sender);
    end;
end;

procedure TFmain.FpgBorrarExecute(Sender: TObject);
var
  fName: String;
  Istr: String;
  cwd : String;
begin
  Istr := IndiceToString(Indice);
  if
  MessageDlg('Delete',
  'Delete this image (index: '+Istr+')?'+LineEnding+
  'CANNOT BE UNDONE',
  mtWarning, [mbNo, mbYes], 0) = mrYes then
  begin
    fName := Istr+Nombre;
    DeleteFile(WorkingDirectory+DirectorySeparator+fName);
    cwd := WorkingDirectory+DirectorySeparator+DIRECTORY_COLLISION+DirectorySeparator;
    try
      DeleteFile(cwd+fName+'.cb');
    except
    end;
    try
      DeleteFile(cwd+fName+'.hb');
    except
    end;
    try
      DeleteFile(cwd+fName+'.pt');
    except
    end;
  FpgRefrescarExecute(Sender);
  end;
end;

procedure TFmain.FPGColorFondoColorChanged(Sender: TObject);
begin
  FpgRefrescarExecute(Sender);
  Config.WriteString('FPG', 'fondo', ColorToString(FPGColorFondo.ButtonColor));
end;

procedure TFmain.FpgNuevoDirExecute(Sender: TObject);
begin
  with SaveDialog1 do
    if Execute then
    begin
      MkDir(FileName);
      MkDir(FileName+DirectorySeparator+DIRECTORY_COLLISION);
      WorkingDirectory := FileName;
      Config.WriteString('FPG', 'workdir', WorkingDirectory);
      FpgNuevoExecute(Sender);
      FpgRefrescarExecute(Sender);
    end;
end;

procedure TFmain.FpgNuevoExecute(Sender: TObject);
begin
  VistaFPG.Items.Clear;
  Miniaturas.Clear;
  //myIndex:=0;
end;



procedure TFmain.FpgRefrescarActual;
var
  flist: TStringList;
  item: TListItem;
begin
  item := VistaFPG.Items[VistaFPG.ItemIndex];

  flist := TStringList.Create;
  flist.LoadFromFile(WorkingDirectory+'.fpl');

  flist[Indice-1] := IndiceToString(Indice)+Nombre;

  item.Caption := IndiceToString(Indice)+Nombre;

  flist.SaveToFile(WorkingDirectory+'.fpl');
  flist.Free;
end;



procedure TFmain.FpgRefrescarExecute(Sender: TObject);
var
  strn: String;
  i, nmax: integer;
  fResult: TSearchRec;
  flist: TStringList;
  item: TListItem;

  Image: TImage;
  Mini: TBitmap;
  mWidth, mHeight : integer;
  DestRect: TRect;

  scale : single;
  despx, despy: integer;
begin
  FMain.Caption := APP_TITLE+' - '+WorkingDirectory;

  VistaFPG.BeginUpdate;
  VistaFPG.Visible := False;
  VistaFPG.ClearSelection;
  VistaFPG.Items.Clear;
  Miniaturas.Clear;
  flist := TStringList.Create;
  BarraEstado.Panels[0].Text := 'Refreshing...';

  nmax := Trunc(power(10, 2))-1;
  FProgress := TFProgress.Create(Self);
  FProgress.ProgressBar.Value:=0;
  FProgress.ProgressBar.MaxValue:=nmax;
  FProgress.Show;

  for i := 1 to nmax do
  begin
    strn := '';
    FmtStr(strn, '%.2d', [i]);
    if (FindFirst (WorkingDirectory+DirectorySeparator+strn+'*.png', 0, fResult) = 0) then
    begin
      flist.Add(fResult.Name);
      Image := TImage.Create(nil);
      Image.Picture.LoadFromFile(WorkingDirectory+DirectorySeparator+fResult.Name);

      mWidth:=Miniaturas.Width; mHeight:=Miniaturas.Height;
      Mini := TBitmap.Create;
      Mini.SetSize(mWidth, mHeight);
      Mini.Canvas.Brush.Color:=FPGColorFondo.ButtonColor;
      Mini.Canvas.FillRect(0,0,mWidth,mHeight);

      despx := 0; despy := 0;
      with Image.Picture.Bitmap do
      begin
        if (Width > Height) then
        begin
          scale := mWidth / Width;
          despy := Trunc((mHeight - Height*scale) / 2);
        end else
        begin
          scale := mHeight / Height;
          despx := Trunc((mWidth - Width*scale) / 2);
        end;
      end;

      DestRect.SetLocation(despx,despy);

      DestRect.Width := Trunc(Image.Picture.Bitmap.Width*scale);
      DestRect.Height:= Trunc(Image.Picture.Bitmap.Height*scale);
      Mini.Canvas.StretchDraw(DestRect, Image.Picture.Bitmap);
      Image.Free;

      item := TListItem.Create(VistaFPG.Items);
      item.Caption := fResult.Name;
      item.ImageIndex := Miniaturas.Add(Mini, nil);
      VistaFPG.Items.AddItem(item);
      //VistaFPG.Items[item.ImageIndex].Caption:=fResult.Name;
      //VistaFPG.AddItem(fResult.Name, item);

    end else flist.Add('');
    FindClose(fResult);

    FProgress.ProgressBar.Value:=flist.Count;
    FProgress.Update;
  end;
  FProgress.Close;
  FProgress.Free;

  flist.SaveToFile(WorkingDirectory+'.fpl');
  flist.Free;

  BarraEstado.Panels[0].Text := 'Refreshed '+IntToStr(Miniaturas.Count)+' elements.';
  Refrescado:=True;

  VistaFPG.Visible := True;
  with VistaFPG do
    for i := 0 to Items.Count-1 do
      if ExtraerIndice(Items[i].Caption) = Indice then
        break;

  VistaFPG.ClearSelection;
  if VistaFPG.Items.Count > 0 then
  begin
    VistaFPG.ItemIndex:=i;
    VistaFPG.Items[i].Selected:=true;
    VistaFPG.Items[i].Focused:=true;
    //myIndex := i;
  end;
  VistaFPG.EndUpdate;
end;

procedure TFmain.FpgRenombrarExecute(Sender: TObject);
var
  Indice_old: Integer;
  Nombre_old: String;
  src, dst: String;
  i: Integer;
  Indice_otro: Integer;
  Nombre_otro: String;
  otro_src, otro_dst: String;

  fwd, fcd: String;
begin
  fwd := WorkingDirectory+DirectorySeparator;
  fcd := WorkingDirectory+DirectorySeparator+DIRECTORY_COLLISION+DirectorySeparator;

  if VistaFPG.ItemIndex >= 0 then
    if FRenombrar.ShowModal = mrOK then
    begin
      Indice_old := Indice;
      Nombre_old := Nombre;

      Indice := FRenombrar.EdIndex.Value;
      Nombre := FRenombrar.EdName.Text;

      if ExtractFileExt(Nombre) <> '.png' then
        Nombre := Nombre+'.png';

      for i := 0 to VistaFPG.Items.Count-1 do
      begin
        Indice_otro := ExtraerIndice(VistaFPG.Items[i].Caption);
        if Indice_otro = Indice then
        begin
          Nombre_otro := ExtraerNombre(VistaFPG.Items[i].Caption);
          otro_src := IndiceToString(Indice_otro)+Nombre_otro;
          otro_dst := IndiceToString(Indice_old)+Nombre_otro;
          RenameFile(fwd+otro_src, fwd+otro_dst);
          // También renombramos los collision
          RenameFile(fcd+otro_src+'.pt', fcd+otro_dst+'.pt');
          RenameFile(fcd+otro_src+'.cb', fcd+otro_dst+'.cb');
          RenameFile(fcd+otro_src+'.hb', fcd+otro_dst+'.hb');
          break;
        end;
      end;
      src := IndiceToString(Indice_old)+Nombre_old;
      dst := IndiceToString(Indice)+Nombre;
      RenameFile(fwd+src, fwd+dst);
      // También renombramos los collision
      RenameFile(fcd+src+'.pt', fcd+dst+'.pt');
      RenameFile(fcd+src+'.cb', fcd+dst+'.cb');
      RenameFile(fcd+src+'.hb', fcd+dst+'.hb');

      // Si cambia el indice hace una recarga completa
      if Indice_old <> Indice then
        FpgRefrescarExecute(Sender)
      else
        FpgRefrescarActual;
    end;
end;

procedure TFmain.ListBoundsDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  Actual : integer;
  Hacia : integer;
begin
  //MessageDlg('Source.Classname='+Source.ClassName, mtInformation, [mbOk], 0);

  if (Source.ClassNameIs('TListBox')) then
  begin
  	Actual := TListBox(Sender).ItemIndex;
    Hacia := TListBox(Source).GetIndexAtXY(X, Y);
    if (Actual >= 0) and (Hacia >= 0) then
    begin
      TListBox(Sender).Items.Move(Actual, Hacia);
      BoundsModificada:=true;
    end;
  end;
end;

procedure TFmain.ListBoundsDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure TFmain.ListBoundsSelectionChange(Sender: TObject; User: boolean);
var
  Val: PChar = '';
  valx, valy: PChar;
  valt, valw, valh: PChar;
  X, Y : integer;
  W, H : integer;
begin
  with ListBounds do
  begin
    case TabsBounds.TabIndex of
    TAB_POINT:
      begin
      Val := StrAlloc(Length(Items[ItemIndex])+1);
      StrPCopy(Val, Items[ItemIndex]);
      ObtenerPointVals(val, @valx, @valy);
      //StrDispose(Val);
      X := StrToIntDef(valx, 0); StrDispose(valx);
      Y := StrToIntDef(valy, 0); StrDispose(valy);
      end;
    otherwise
      begin
      Val := StrAlloc(Length(Items[ItemIndex])+1);
      StrPCopy(Val, Items[ItemIndex]);
      ObtenerColVals(val, @valt, @valx, @valy, @valw, @valh);
      //StrDispose(Val);

      BTipo.Text := valt; StrDispose(valt);
      X := StrToIntDef(valx, 0); StrDispose(valx);
      Y := StrToIntDef(valy, 0); StrDispose(valy);

      W := StrToIntDef(valw, 0); StrDispose(valw);
      H := StrToIntDef(valh, 0); StrDispose(valh);
      end;
    end;
  end;
  EdX.Value:=X;
  EdY.Value:=Y;
  EdW.Value:=W;
  EdH.Value:=H;
  if W <> 0 then
    EdR.Value:=W
  else
    EdR.Value:=H;

  BTipoCloseUp(Sender);
  Screen.RedrawBitmap;
end;

procedure TFmain.MainPanelResize(Sender: TObject);
begin
  Config.WriteInteger('Main', 'width', MainPanel.Width);
  Config.WriteInteger('Main', 'height', MainPanel.Height);
end;

function TFmain.BoundsModificadaContinuar: Boolean;
var
  mdResult: TModalResult;
begin
  mdResult := mrNo;
  if BoundsModificada then
    mdResult := MessageDlg('Bounds modified', 'Save changes before continue?', mtWarning, [mbYes, mbNo, mbCancel], 0);
  if mdResult = mrYes then
    BoundFileSalvarExecute(nil);
  if mdResult = mrNo then BoundsModificada := False;

  Result := (mdResult = mrYes) or (mdResult = mrNo);
end;

procedure TFmain.TabsBoundsChanging(Sender: TObject; var AllowChange: Boolean);
begin
  if not BoundsModificadaContinuar then
    AllowChange:=False;
end;

procedure TFmain.TabsBoundsChange(Sender: TObject);
begin
  Config.WriteInteger('Bounds', 'tab', TabsBounds.TabIndex);

  with TabsBounds do
  case TabIndex of
  TAB_POINT:
    begin
      PanelPosition.Visible:=true;
      PanelSize.Visible:=false;
      PanelRadius.Visible:=false;
      BTipo.Visible:=false;
      // Mostramos los puntos
      if BoundAutoClean.Checked then
        ListBounds.Items.Assign(Points);
    end;

  TAB_COLLISION:
    begin
      PanelPosition.Visible:=true;
      PanelSize.Visible:=true;
      PanelRadius.Visible:=true;
      BTipo.Visible:=true;
      // Mostramos las collisions
      if BoundAutoClean.Checked then
        ListBounds.Items.Assign(Collisions);
    end;

  TAB_HIT:
    begin
      PanelPosition.Visible:=true;
      PanelSize.Visible:=true;
      PanelRadius.Visible:=true;
      BTipo.Visible:=true;
      // Mostramos los hit
      if BoundAutoClean.Checked then
        ListBounds.Items.Assign(Hits);
    end;
  end;
end;

procedure TFmain.UtilAutoFCuadExecute(Sender: TObject);
var
  x, y, w, h : integer;
begin
  w := Trunc(sqrt(Imagen.width*Imagen.width+Imagen.height*Imagen.height));
  x := - w div 2 - Point0.x + Imagen.Width div 2;
  y := - w div 2 - Point0.y + Imagen.Height div 2;

  BTipo.ItemIndex := INDEX_AA_SQUARE;
  EdX.Value   := x;
  EdY.Value   := y;
  EdR.Value   := w;
  EdRExit(Sender);
  BTipoChange(Sender);
end;

procedure TFmain.UtilAutoRectExecute(Sender: TObject);
var
  x, y, w, h : integer;
begin
  w := Imagen.Width;
  h := Imagen.Height;
  x := -Point0.x;
  y := -Point0.y;

  BTipo.ItemIndex := INDEX_RECTANGLE;
  EdX.Value   := x;
  EdY.Value   := y;
  EdW.Value   := w;
  EdH.Value   := h;
  BTipoChange(Sender);
end;

procedure TFmain.UtilCenterExecute(Sender: TObject);
var
  x, y : integer;
begin
  if (ListBounds.ItemIndex = 0) then
  begin
  x := Round(Imagen.Width / 2);
  y := Round(Imagen.Height / 2);
  end else
  begin
  x := Round(Imagen.Width / 2) - Point0.x;
  y := Round(Imagen.Height / 2) - Point0.y;
  end;

  EdX.Value   := x;
  EdY.Value   := y;
  BTipoChange(Sender);
end;

procedure TFmain.VistaFPGClick(Sender: TObject);
begin
  VistaFPGload;
end;

procedure TFmain.VistaFPGload;
var
  no_point_file: Boolean = false;
  no_collision_file: Boolean = false;
  no_hit_file: Boolean = false;
  tmp : Boolean;
begin
  if not BoundsModificadaContinuar then Exit;
  (*if VistaFPG.Items.Count > 0 then
  begin
    //VistaFPG.ClearSelection;
    VistaFPG.ItemIndex:=myIndex;
    //VistaFPG.Items[myIndex].Focused:=true;
    //VistaFPG.Items[myIndex].Selected:=true;
  end;*)
  with VistaFPG do
  if Items.Count > 0 then
  begin
    Nombre := ExtraerNombre(Items[ItemIndex].Caption);
    Indice := ExtraerIndice(Items[ItemIndex].Caption);

    FreeAndNil(Imagen);
    Imagen := TImagenMap.Create;
    Imagen.modificada := false;
    Imagen.fNombre := IndiceToString(Indice)+Nombre;
    Imagen.fPath := WorkingDirectory+DirectorySeparator+Imagen.fNombre;
    try
      Imagen.LoadFromFile(Imagen.fPath);
    except
      on E:Exception do
      begin
        BarraEstado.Panels[0].Text:='Cannot load file: '+Imagen.fPath+'. '+E.Message;
        Exit;
      end;
    end;
    Point0.x := Imagen.Width div 2;
    Point0.y := Imagen.Height div 2;

    // Cargamos Puntos
    Points.Clear;
    try
      Points.LoadFromFile(WorkingDirectory+DirectorySeparator+DIRECTORY_COLLISION+DirectorySeparator+Imagen.fNombre+'.pt');
    except
      no_point_file:=True;
    end;
    // Cargamos Colision
    Collisions.Clear;
    try
      Collisions.LoadFromFile(WorkingDirectory+DirectorySeparator+DIRECTORY_COLLISION+DirectorySeparator+Imagen.fNombre+'.cb');
    except
      no_collision_file:=True;
    end;
    // Cargamos Hits
    Hits.Clear;
    try
      Hits.LoadFromFile(WorkingDirectory+DirectorySeparator+DIRECTORY_COLLISION+DirectorySeparator+Imagen.fNombre+'.hb');
    except
      no_hit_file:=True;
    end;


      // Actualizar MapInfo
      with MapInfo do
      begin
      Clear();
      AddCenterLine('"'+Nombre+'"', 2);
      AddBreak();
      AddFromNewLine('FPG Index: ', 3);Add(IntToStr(Indice), 4);
      AddFromNewLine(' ', 0);
      AddFromNewLine('Dimensions: ', 5);Add(IntToStr(Imagen.Width)+'x'+IntToStr(Imagen.Height), 0);
      AddFromNewLine('Points: ', 5); Add(IntToStr(Points.Count), 0);
      if no_point_file then Add(' (no file)', 0);
      AddFromNewLine('Collisions: ', 5); Add(IntToStr(Collisions.Count), 0);
      if no_collision_file then Add(' (no file)', 0);
      AddFromNewLine('Hits: ', 5);Add(IntToStr(Hits.Count), 0);
      if no_hit_file then Add(' (no file)', 0);
      Format;
      Paint;
      end;
      // Refrescar bounds
      TabsBoundsChange(nil);

      // Refrescar pantalla
      BitmapPantallaRedraw;
    end;
end;

procedure TFmain.VistaFPGKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    FpgRenombrarExecute(Sender);
  (*
  // FIXME!!: Qué pasa con los elementos de derecha e izquierda?
  else
  if key = VK_UP then
  begin
    Dec(myIndex);
    if myIndex < 0 then
      myIndex:=0;
    VistaFPGload;
  end else
  if key = VK_DOWN then
  begin
    Inc(myIndex);
    if myIndex > VistaFPG.Items.Count-1 then
      myIndex := VistaFPG.Items.Count-1;
    VistaFPGload;
  end else
  if key = VK_END then
  begin
    myIndex := VistaFPG.Items.Count-1;
    VistaFPGload;
  end else
  if key = VK_HOME then
  begin
    myIndex := 0;
    VistaFPGload;
  end;*)
end;

procedure TFmain.VistaFPGKeyPress(Sender: TObject; var Key: char);
begin

end;

procedure TFmain.VistaFPGKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //VistaFPG.ItemIndex := VistaFPG.ItemFocused.Index;
  //VistaFPGClick(Sender);
end;

procedure TFmain.VistaFPGSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  if Selected then
  begin
    //myIndex:=Item.Index;
    VistaFPGload;
  end;
end;


function ExtraerNombre( s: String ): String;
begin
  Result := Copy(S, 3, Length(S)-2);
end;
function ExtraerIndice( s: String ): Integer;
begin
  Result := StrToInt(Copy(S, 1, 2));
end;
function IndiceToString( i: Integer ): String;
begin
  FmtStr(Result, '%.2d', [i]);
end;



procedure TFmain.ZoomScaleKeyPress(Sender: TObject; var Key: char);
begin
  if Ord(Key) = VK_RETURN then
  begin
    AutoZoom.Checked := false;
    BitmapPantallaRedraw;
  end;
end;



end.

