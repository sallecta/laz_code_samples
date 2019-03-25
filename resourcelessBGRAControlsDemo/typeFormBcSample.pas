unit typeFormBcSample;

{$mode objfpc}{$H+}

interface

uses Interfaces, Forms, Controls{tbutton}, StdCtrls, Classes,
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
  TFormBcSample = class(TForm)
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

    function bitmapFromFileDelme(strFilenasme:string):TBitmap;

    {Form Actions}
    procedure Form_onClick(Sender: TObject);
    procedure Form_onMouseDown(Sender: TObject; mouseBtn: TMouseButton;
      Shift: TShiftState; posX, posY: integer);
  end;

implementation

uses glob;

{Form Creation}
constructor TFormBcSample.Create(AOwner: TComponent);
begin

  {!}inherited CreateNew(AOwner, 1);{!}
  Name:='FormBcSample';
  Caption := glob.namesub1;
  left:=100;top:=100;
  Width:=300;
  Height:=300;
  OnClick := @Form_onClick;
  OnMouseDown := @Form_onMouseDown;

  {Form Controls}
end;

function TFormBcSample.bitmapFromFileDelme(strFilenasme:string):TBitmap;
begin
  Result := TBitmap.Create;
  try
    // Load from disk
    Result.LoadFromFile(strFilenasme);
  finally
  end;
end;

{Form Actions}
procedure TFormBcSample.Form_onClick(Sender: TObject);
begin
  Close;
end;

procedure TFormBcSample.Form_onMouseDown(Sender: TObject; mouseBtn: TMouseButton;
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

initialization

end.
