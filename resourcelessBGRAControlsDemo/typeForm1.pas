unit typeForm1;

{$mode objfpc}{$H+}

interface

uses sysutils, Interfaces, Forms, Controls{tbutton}, StdCtrls, Classes,
  graphics{tbitmap},
  {BGRAControls units}
  BCButton, BCButtonFocus, BCImageButton{+TBCXButton}, BCMaterialDesignButton,
  BCMDButton, BCMDButtonFocus, BCSVGButton, BGRAResizeSpeedButton,
  BGRASpeedButton, ColorSpeedButton, BCLabel, BCListBox{+BCPaperPanel},
  BCRadialProgressBar, BCSVGViewer, BCToolBar, BCTrackbarUpdown, BGRAColorTheme,
  BGRAFlashProgressBar, BGRAGraphicControl, BGRAImageList{<-non visual},
  BGRAImageManipulation{<-non visual}, BGRAImageTheme, BGRAKnob, BGRAShape,
  BGRASpriteAnimation, BGRATheme, BGRAThemeButton, BGRAThemeRadioButton,
  BGRAVirtualScreen,DTAnalogClock, DTAnalogGauge, DTThemedGauge, BCPanel;

var
  btnH, btnW, btnT, btnPT, btnL, btnPL: integer;

type
  
  { TForm1 }

  TForm1 = class(TForm)
    {Form Creation}
    constructor Create({!}AOwner: TComponent); override;
    {Form Controls}
  var //fields can't appear after method, let's use vars instea
    BCButton1: TBCButton;
    BCButtonFocus1: TBCButtonFocus;
    BCImageButton1: TBCImageButton;
    BCXButton1: TBCXButton;
    BCMaterialDesignButton1:TBCMaterialDesignButton;
    BCMDButton1: TBCMDButton;
    BCMDButtonFocus1: TBCMDButtonFocus;
    BCSVGButton1: TBCSVGButton;
    BGRAResizeSpeedButton1: TBGRAResizeSpeedButton;
    BGRASpeedButton1: TBGRASpeedButton;
    ColorSpeedButton1: TColorSpeedButton;
    BCLabel1: TBCLabel;
    BCPaperPanel1: TBCPaperPanel;
    BCListBox1: TBCListBox;
    BCPaperListBox1 : TBCPaperListBox;
    BCPanel1 : TBCPanel;
    BCRadialProgressBar1: TBCRadialProgressBar;
    BCSVGViewer1: TBCSVGViewer;
    BCToolBar1: TBCToolBar;
    BCTrackbarUpdown1: TBCTrackbarUpdown;
    BGRAColorTheme1: TBGRAColorTheme;
    BGRAFlashProgressBar1: TBGRAFlashProgressBar;
    BGRAGraphicControl1: TBGRAGraphicControl;
    BGRAImageList1: TBGRAImageList;
    BGRAImageManipulation1: TBGRAImageManipulation;
    BGRAImageTheme1: TBGRAImageTheme;
    BGRAKnob1: TBGRAKnob;
    BGRAShape1: TBGRAShape;
    BGRASpriteAnimation1: TBGRASpriteAnimation;
    BGRATheme1: TBGRATheme;
    BGRAThemeButton1: TBGRAThemeButton;
    BGRAThemeRadioButton1: TBGRAThemeRadioButton;
    BGRAVirtualScreen1: TBGRAVirtualScreen;
    DTAnalogClock1: TDTAnalogClock;
    DTAnalogGauge1: TDTAnalogGauge;
    DTThemedGauge1: TDTThemedGauge;

    function bitmapFromFile(strFilenasme:string):TBitmap;

    {Form Actions}
    procedure Form1_onClose(Sender: TObject; var CloseAction:TCloseAction);
    procedure Form1_onClick(Sender: TObject);
    procedure Form1_onMouseDown(Sender: TObject; mouseBtn: TMouseButton;
      Shift: TShiftState; posX, posY: integer);
    {BCButton1 Actions}
    procedure BCButton1_onClick(Sender: TObject);
  end;

implementation

uses glob;

{Form Creation}
constructor TForm1.Create(AOwner: TComponent);
begin

  {!}inherited CreateNew(AOwner, 1);{!}
  Caption := glob.namemain;
  left:=100;top:=100;
  Autosize := True;
  self.ChildSizing.HorizontalSpacing:=10;
  self.ChildSizing.VerticalSpacing:=10;
  self.ChildSizing.ControlsPerLine:=5;
  self.ChildSizing.Layout:=cclLeftToRightThenTopToBottom;
  self.ChildSizing.LeftRightSpacing:=10;
  self.ChildSizing.TopBottomSpacing:=10;
  VertScrollBar.Visible := False;
  HorzScrollBar.Visible := False;
  self.OnClose:= @Form1_onClose;
  OnClick := @Form1_onClick;
  OnMouseDown := @Form1_onMouseDown;

  {Form Controls}
  BCButton1 := TBCButton.Create(Self);
  BCButton1.Caption:= 'BCButton1';
  BCButton1.ShowHint := True;
  BCButton1.Hint := BCButton1.Caption;
  BCButton1.OnClick:=@BCButton1_onClick;
  BCButton1.Parent := self;

  BCButtonFocus1 := TBCButtonFocus.Create(Self);
  BCButtonFocus1.Caption := 'BCButtonFocus1';
  BCButtonFocus1.ShowHint := True;
  BCButtonFocus1.Hint := BCButtonFocus1.Caption;
  BCButtonFocus1.Parent := self;

  BCTrackbarUpdown1 := TBCTrackbarUpdown.Create(Self);
  BCTrackbarUpdown1.Width:=200;
  BCTrackbarUpdown1.Caption:= 'BCTrackbarUpdown1';
  BCTrackbarUpdown1.ShowHint := True;
  BCTrackbarUpdown1.Hint := BCTrackbarUpdown1.Caption;
  BCTrackbarUpdown1.Parent := self;

  BCImageButton1 := TBCImageButton.Create(Self);
  BCImageButton1.Caption := 'BCImageButton1';
  BCImageButton1.ShowHint := True;
  BCImageButton1.Hint := BCImageButton1.Caption;
  BCImageButton1.Parent := self;

  BCXButton1 := TBCXButton.Create(Self);
  BCXButton1.Height := btnH;
  BCXButton1.Caption := 'BCXButton1';
  BCXButton1.ShowHint := True;
  BCXButton1.Hint := BCXButton1.Caption;
  BCXButton1.Parent := self;

  BCMaterialDesignButton1 := TBCMaterialDesignButton.Create(Self);
  BCMaterialDesignButton1.Caption := 'BCMaterialDesignButton1';
  BCMaterialDesignButton1.ShowHint := True;
  BCMaterialDesignButton1.Hint := BCMaterialDesignButton1.Caption;
  BCMaterialDesignButton1.Parent := self;

  BCMDButton1 := TBCMDButton.Create(Self);
  BCMDButton1.Caption := 'BCMDButton1';
  BCMDButton1.ShowHint := True;
  BCMDButton1.Hint := BCMDButton1.Caption;
  BCMDButton1.Parent := self;

  BCMDButtonFocus1 := TBCMDButtonFocus.Create(Self);
  BCMDButtonFocus1.Caption := 'BCMDButtonFocus1';
  BCMDButtonFocus1.ShowHint := True;
  BCMDButtonFocus1.Hint := BCMDButtonFocus1.Caption;
  BCMDButtonFocus1.Parent := self;

  BCSVGButton1 := TBCSVGButton.Create(Self);
  BCSVGButton1.Caption := 'BCSVGButton1';
  BCSVGButton1.ShowHint := True;
  BCSVGButton1.Hint := BCSVGButton1.Caption;
  BCSVGButton1.Color:=$00B1A74F;
  BCSVGButton1.Parent := self;

  BGRAResizeSpeedButton1 := TBGRAResizeSpeedButton.Create(Self);
  BGRAResizeSpeedButton1.Caption := 'BGRAResizeSpeedButton1';
  BGRAResizeSpeedButton1.ShowHint := True;
  BGRAResizeSpeedButton1.Hint := BGRAResizeSpeedButton1.Caption;
  BGRAResizeSpeedButton1.Parent := self;

  BGRASpeedButton1 := TBGRASpeedButton.Create(Self);
  BGRASpeedButton1.Caption := 'BGRASpeedButton1';
  BGRASpeedButton1.ShowHint := True;
  BGRASpeedButton1.Hint := BGRASpeedButton1.Caption;
  BGRASpeedButton1.Parent := self;  BGRASpeedButton1 := TBGRASpeedButton.Create(Self);

  ColorSpeedButton1 := TColorSpeedButton.Create(Self);
  ColorSpeedButton1.Caption := 'ColorSpeedButton1';
  ColorSpeedButton1.ShowHint := True;
  ColorSpeedButton1.Hint := ColorSpeedButton1.Caption;
  ColorSpeedButton1.Parent := self;

  BCLabel1 := TBCLabel.Create(Self);
  BCLabel1.Caption := 'BCLabel1';
  BCLabel1.ShowHint := True;
  BCLabel1.Hint := BCLabel1.Caption;
  BCLabel1.Parent := self;

  BCListBox1 := TBCListBox.Create(Self);
  BCListBox1.Color:=$00A8FA9C;
  BCListBox1.Caption := 'BCListBox1';
  BCListBox1.ShowHint := True;
  BCListBox1.Hint := BCListBox1.Caption;
  BCListBox1.Parent := self;

  BCPaperPanel1 := TBCPaperPanel.Create(Self);
  BCPaperPanel1.Caption := 'BCPaperPanel1';
  BCPaperPanel1.ShowHint := True;
  BCPaperPanel1.Hint := BCPaperPanel1.Caption;
  BCPaperPanel1.Parent := self;

  BCPaperListBox1 := TBCPaperListBox.Create(Self);
  BCPaperListBox1.Caption := 'BCPaperListBox1';
  BCPaperListBox1.ShowHint := True;
  BCPaperListBox1.Hint := BCPaperListBox1.Caption;
  BCPaperListBox1.Parent := self;

  BCPanel1 := TBCPanel.Create(Self);
  BCPanel1.Caption := 'BCPanel1';
  BCPanel1.ShowHint := True;
  BCPanel1.Hint := BCPanel1.Caption;
  BCPanel1.Parent := self;

  BCRadialProgressBar1 := TBCRadialProgressBar.Create(Self);
  BCRadialProgressBar1.Caption := 'BCRadialProgressBar1';
  BCRadialProgressBar1.ShowHint := True;
  BCRadialProgressBar1.Hint := BCRadialProgressBar1.Caption;
  BCRadialProgressBar1.Parent := self;

  BCSVGViewer1 := TBCSVGViewer.Create(Self);
  BCSVGViewer1.Color := $00D1AEAC;
  BCSVGViewer1.Caption := 'BCSVGViewer1';
  BCSVGViewer1.ShowHint := True;
  BCSVGViewer1.Hint := BCSVGViewer1.Caption;
  BCSVGViewer1.Parent := self;

  BCToolBar1 := TBCToolBar.Create(Self);
  BCToolBar1.Align:=alNone;
  BCToolBar1.Caption:= 'BCToolBar1';
  BCToolBar1.ShowHint := True;
  BCToolBar1.Hint := BCToolBar1.Caption;
  BCToolBar1.Parent := self;

  BGRAFlashProgressBar1 := TBGRAFlashProgressBar.Create(Self);
  BGRAFlashProgressBar1.Caption:= 'BGRAFlashProgressBar1';
  BGRAFlashProgressBar1.ShowHint := True;
  BGRAFlashProgressBar1.Hint := BGRAFlashProgressBar1.Caption;
  BGRAFlashProgressBar1.Parent := self;

  BGRAGraphicControl1 := TBGRAGraphicControl.Create(Self);
  BGRAGraphicControl1.Caption:= 'BGRAGraphicControl1';
  BGRAGraphicControl1.ShowHint := True;
  BGRAGraphicControl1.Hint := BGRAGraphicControl1.Caption;
  BGRAGraphicControl1.Parent := self;

  BGRAKnob1 := TBGRAKnob.Create(Self);
  BGRAKnob1.LightIntensity:=0;
  BGRAKnob1.Caption:= 'BGRAKnob1';
  BGRAKnob1.ShowHint := True;
  BGRAKnob1.Hint := BGRAKnob1.Caption;
  BGRAKnob1.Parent := self;

  BGRAShape1 := TBGRAShape.Create(Self);
  BGRAShape1.Caption:= 'BGRAShape1';
  BGRAShape1.ShowHint := True;
  BGRAShape1.Hint := BGRAShape1.Caption;
  BGRAShape1.Parent := self;

  BGRASpriteAnimation1 := TBGRASpriteAnimation.Create(Self);
  BGRASpriteAnimation1.Caption:= 'BGRASpriteAnimation1';
  BGRASpriteAnimation1.ShowHint := True;
  BGRASpriteAnimation1.Hint := BGRASpriteAnimation1.Caption;
  BGRASpriteAnimation1.Sprite := self.bitmapFromFile(path_media_s+'sprite.bmp');
  BGRASpriteAnimation1.Parent := self;

  BGRAImageManipulation1 := TBGRAImageManipulation.Create(Self);
  BGRAImageManipulation1.Caption:= 'BGRAImageManipulation1';
  BGRAImageManipulation1.ShowHint := True;
  BGRAImageManipulation1.Hint := BGRAImageManipulation1.Caption;
  BGRAImageManipulation1.Parent := self;

  BGRAVirtualScreen1 := TBGRAVirtualScreen.Create(Self);
  BGRAVirtualScreen1.Caption:= 'BGRAVirtualScreen1';
  BGRAVirtualScreen1.ShowHint := True;
  BGRAVirtualScreen1.Hint := BGRAVirtualScreen1.Caption;
  BGRAVirtualScreen1.BorderWidth:= 1  ;
  BGRAVirtualScreen1.BorderStyle:= bsSingle;
  BGRAVirtualScreen1.color:=$00B5CDFF;
  BGRAVirtualScreen1.Parent := self;

  DTAnalogClock1 := DTAnalogClock.TDTAnalogClock.Create(Self);
  DTAnalogClock1.Caption:= 'DTAnalogClock1';
  DTAnalogClock1.ShowHint := True;
  DTAnalogClock1.Hint := DTAnalogClock1.Caption;
  DTAnalogClock1.Parent := self;

  DTAnalogGauge1 := DTAnalogGauge.TDTAnalogGauge.Create(Self);
  DTAnalogGauge1.Caption:= 'DTAnalogGauge1';
  DTAnalogGauge1.ShowHint := True;
  DTAnalogGauge1.Hint := DTAnalogGauge1.Caption;
  DTAnalogGauge1.Parent := self;

  DTThemedGauge1 := DTThemedGauge.TDTThemedGauge.Create(Self);
  DTThemedGauge1.Caption:= 'DTThemedGauge1';
  DTThemedGauge1.ShowHint := True;
  DTThemedGauge1.Hint := DTThemedGauge1.Caption;
  DTThemedGauge1.Parent := self;

  BGRAThemeButton1 := TBGRAThemeButton.Create(Self);
  BGRAThemeButton1.Caption:= 'BGRAThemeButton1';
  BGRAThemeButton1.ShowHint := True;
  BGRAThemeButton1.Hint := BGRAThemeButton1.Caption;
  BGRAThemeButton1.Parent := self;

  BGRAThemeRadioButton1 := TBGRAThemeRadioButton.Create(Self);
  BGRAThemeRadioButton1.Caption:= 'BGRAThemeRadioButton1';
  BGRAThemeRadioButton1.ShowHint := True;
  BGRAThemeRadioButton1.Hint := BGRAThemeRadioButton1.Caption;
  BGRAThemeRadioButton1.Parent := self;

  BGRAThemeRadioButton1 := TBGRAThemeRadioButton.Create(Self);
  BGRAThemeRadioButton1.Caption:= 'BGRAThemeRadioButton1';
  BGRAThemeRadioButton1.ShowHint := True;
  BGRAThemeRadioButton1.Hint := BGRAThemeRadioButton1.Caption;
  BGRAThemeRadioButton1.Parent := self;

end;

function TForm1.bitmapFromFile(strFilenasme:string):TBitmap;
begin
  Result := TBitmap.Create;
  try
    // Load from disk
    Result.LoadFromFile(strFilenasme);
  finally
  end;
end;

procedure TForm1.Form1_onClose(Sender: TObject; var CloseAction:TCloseAction);

   //var
   //  Current:integer; mainform, subform: TForm; str:string='';

begin
   //if CloseAction=caNone then writeln('caNone');
   //if CloseAction=caHide then writeln('caHide');
   //if CloseAction=caFree then writeln('caFree');
   //if CloseAction=caMinimize then writeln('caMinimize');
   //
   //
   //// close all subforms
   //mainform:=TForm(self);
   //writeln('Components total: ',application.ComponentCount);
   //     Current:=application.ComponentCount-1;
   //     while application.ComponentCount >0 do
   //     begin
   //       if Current < 0 then Break;
   //       writeln('   index: ',Current);
   //       subform:=TForm(application.Components[Current]);
   //       writeln('   subform: ',subform.ToString);
   //       writeln('   components left: ',application.ComponentCount);
   //       Current:= Current-1;
   //     end;
end;

{Form Actions}
procedure TForm1.Form1_onClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Form1_onMouseDown(Sender: TObject; mouseBtn: TMouseButton;
  Shift: TShiftState; posX, posY: integer);
begin
  //get rid of Hints Parameter not used
  Sender := Sender;
  posX := posX;
  posY := posY;
  mouseBtn := mouseBtn;
  Shift := Shift;
  //real actions
  Close;
end;

{BCButton1 Actions}
procedure TForm1.BCButton1_onClick(Sender: TObject);
var isNil:boolean;
begin
  writeln('begin');
  isNil:= (application.FindComponent('FormBcSample')) = nil;
  if  isNil then begin
      writeln('is nil, creating');
      application.CreateForm(glob.TFormBcSample,glob.FormBcSample);
      writeln('... showing');
      glob.FormBcSample.Show;
  end
  else begin
     if (glob.FormBcSample.CanFocus) then begin
        writeln('   can focus, setting focus...');
        glob.FormBcSample.SetFocus;
     end
     else begin
        writeln('  is not nil, but can''t be focused');
        writeln('  setting to nil...');
        glob.FormBcSample.Free;
        writeln('  creating');
        application.CreateForm(glob.TFormBcSample,glob.FormBcSample);
        writeln('  showing');
        glob.FormBcSample.Show;
     end
  end;
  writeln('end');
end;

initialization
  btnH := 20;
  btnW := 150;
  btnT := 20;
  btnPT:= 0;
  btnL := 20;
  btnPL:= 40;

end.
