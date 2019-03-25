unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, BCButton,
  BCButtonFocus, BCImageButton, BCMaterialDesignButton, BCMDButton,
  BCMDButtonFocus, BCSVGButton, BGRAResizeSpeedButton, BGRASpeedButton,
  ColorSpeedButton, BCGameGrid, BCLabel, BCListBox, BCPanel,
  BCRadialProgressBar, BCSVGViewer, BCToolBar, BCTrackbarUpdown,
  BGRAFlashProgressBar, BGRAGraphicControl, BGRAImageList, BGRAKnob, BGRAShape,
  BGRASpriteAnimation, BGRAImageManipulation, BGRAVirtualScreen, DTAnalogClock,
  DTAnalogGauge, dtthemedgauge, BGRAImageTheme, BGRAThemeButton, BGRATheme,
  BGRAColorTheme, BGRAThemeRadioButton;

type

  { TForm1 }

  TForm1 = class(TForm)
    BCButton1: TBCButton;
    BCButtonFocus1: TBCButtonFocus;
    BCImageButton1: TBCImageButton;
    BCLabel1: TBCLabel;
    BCListBox1: TBCListBox;
    BCMaterialDesignButton1: TBCMaterialDesignButton;
    BCMDButton1: TBCMDButton;
    BCMDButtonFocus1: TBCMDButtonFocus;
    BCPanel1: TBCPanel;
    BCPaperListBox1: TBCPaperListBox;
    BCPaperPanel1: TBCPaperPanel;
    BCRadialProgressBar1: TBCRadialProgressBar;
    BCSVGButton1: TBCSVGButton;
    BCSVGViewer1: TBCSVGViewer;
    BCToolBar1: TBCToolBar;
    BCTrackbarUpdown1: TBCTrackbarUpdown;
    BCXButton1: TBCXButton;
    BGRAColorTheme1: TBGRAColorTheme;
    BGRAFlashProgressBar1: TBGRAFlashProgressBar;
    BGRAGraphicControl1: TBGRAGraphicControl;
    BGRAImageList1: TBGRAImageList;
    BGRAImageManipulation1: TBGRAImageManipulation;
    BGRAImageTheme1: TBGRAImageTheme;
    BGRAKnob1: TBGRAKnob;
    BGRAResizeSpeedButton1: TBGRAResizeSpeedButton;
    BGRAShape1: TBGRAShape;
    BGRASpeedButton1: TBGRASpeedButton;
    BGRASpriteAnimation1: TBGRASpriteAnimation;
    BGRATheme1: TBGRATheme;
    BGRAThemeButton1: TBGRAThemeButton;
    BGRAThemeRadioButton1: TBGRAThemeRadioButton;
    BGRAVirtualScreen1: TBGRAVirtualScreen;
    ColorSpeedButton1: TColorSpeedButton;
    DTAnalogClock1: TDTAnalogClock;
    DTAnalogGauge1: TDTAnalogGauge;
    DTThemedGauge1: TDTThemedGauge;
    procedure BGRAResizeSpeedButton1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BGRAResizeSpeedButton1Click(Sender: TObject);
begin

end;

end.

