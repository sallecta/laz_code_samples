unit typeFormBcSample;

{$mode objfpc}{$H+}

interface

uses Interfaces, Forms, Controls{tbutton}, StdCtrls, Classes,
  Graphics{tbitmap},
  {BGRAControls units} BCTypes, BGRABitmapTypes,
  BCButton, BCButtonFocus, BCImageButton{+TBCXButton}, BCMaterialDesignButton,
  BCMDButton, BCMDButtonFocus, BCSVGButton, BGRAResizeSpeedButton,
  BGRASpeedButton, ColorSpeedButton, BCLabel, BCListBox{+BCPaperPanel},
  BCRadialProgressBar, BCSVGViewer, BCToolBar, BCTrackbarUpdown, BGRAColorTheme,
  BGRAFlashProgressBar, BGRAGraphicControl, BGRAImageList{<-non visual},
  BGRAImageManipulation{<-non visual}, BGRAImageTheme, BGRAKnob, BGRAShape,
  BGRASpriteAnimation, BGRATheme, BGRAThemeButton, BGRAThemeRadioButton,
  BGRAVirtualScreen, DTAnalogClock, DTAnalogGauge, DTThemedGauge, BCPanel,
  ExtCtrls, ActnList, Menus,
  gui_settings_controls;

var
  btnH, btnW, btnT, btnPT, btnL, btnPL: integer;

type

  { TFormBcSample }

  TFormBcSample = class(TForm)
    {Form Creation}
    constructor Create({!}AOwner: TComponent); override;
    {Form Controls}
  var //fields can't appear after method, let's use vars instea
    ImageList1: TImageList;
    BCButton1, BCButton2, BCButton3, BCButton4, BCButton5, BCButton6,
    BCButton7, BCButton8, BCButton9, BCButton10, BCButton11, BCButton12,
    BCButton13, BCButton14, BCButton15, BCButton16, BCButton17, BCButton18: TBCButton;
    CheckBox1: TCheckBox;
    Shape1: TShape;
    BCButtonFocus1: TBCButtonFocus;
    BCImageButton1: TBCImageButton;
    BCXButton1: TBCXButton;
    BCMaterialDesignButton1: TBCMaterialDesignButton;
    BCMDButton1: TBCMDButton;
    BCMDButtonFocus1: TBCMDButtonFocus;
    BCSVGButton1: TBCSVGButton;
    BGRAResizeSpeedButton1: TBGRAResizeSpeedButton;
    BGRASpeedButton1: TBGRASpeedButton;
    ColorSpeedButton1: TColorSpeedButton;
    BCLabel1: TBCLabel;
    BCPaperPanel1: TBCPaperPanel;
    BCListBox1: TBCListBox;
    BCPaperListBox1: TBCPaperListBox;
    BCPanel1: TBCPanel;
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
    Bevel1, Bevel2: TBevel;

    ActionList1: TActionList;
    Action1, Action2, Action3: TAction;

    PopupMenu1, PopupMenu2, PopupMenu3: TPopupMenu;
    MenuItem1, MenuItem2, MenuItem3, MenuItem4, MenuItem5, MenuItem6,
    MenuItem7, MenuItem8, MenuItem9, MenuItem10: TMenuItem;


    {Form Actions}
    procedure CheckBox1_onChange(Sender: TObject);
    procedure Form_onClick(Sender: TObject);
  end;

implementation

uses glob;

{Form Creation}
constructor TFormBcSample.Create(AOwner: TComponent);
begin

  {!}inherited CreateNew(AOwner, 1);{!}

  Name := 'FormBcSample';
  Caption := glob.namesub1;
  Left := 591;
  Height := 477;
  Top := 133;
  Width := 588;
  ClientHeight := 477;
  ClientWidth := 588;
  OnClick := @Form_onClick;

  {Form Controls}

  ActionList1 := TActionList.Create(self);
  ActionList1.Images := ImageList1;

  Action1 := TAction.Create(ActionList1);
  Action1.Caption := 'Action1';
  Action1.DisableIfNoHandler := False;
  Action1.ImageIndex := 6;

  Action2 := TAction.Create(ActionList1);
  Action2.Caption := 'Action2';
  Action2.DisableIfNoHandler := False;
  Action2.ImageIndex := 9;

  Action3 := TAction.Create(ActionList1);
  Action3.Caption := 'Action3';
  Action3.DisableIfNoHandler := False;
  Action3.ImageIndex := 3;

  PopupMenu1 := TPopupMenu.Create(Self);
  MenuItem1 := TMenuItem.Create(PopupMenu1);
  MenuItem1.Action := Action1;
  PopupMenu1.Items.Add(MenuItem1);
  MenuItem2 := TMenuItem.Create(PopupMenu1);
  MenuItem2.Action := Action2;
  PopupMenu1.Items.Add(MenuItem2);



  PopupMenu2 := TPopupMenu.Create(self);
  PopupMenu2.Alignment := paCenter;
  PopupMenu2.Parent := self;
  MenuItem3 := TMenuItem.Create(PopupMenu2);
  MenuItem3.Action := Action1;
  PopupMenu2.Items.Add(MenuItem3);
  MenuItem4 := TMenuItem.Create(PopupMenu2);
  MenuItem4.Action := Action2;
  PopupMenu2.Items.Add(MenuItem4);
  MenuItem5 := TMenuItem.Create(PopupMenu2);
  MenuItem5.Caption := '-';
  PopupMenu2.Items.Add(MenuItem5);
  MenuItem6 := TMenuItem.Create(PopupMenu2);
  MenuItem6.Action := Action3;
  PopupMenu2.Items.Add(MenuItem6);

  PopupMenu3 := TPopupMenu.Create(self);
  PopupMenu3.Alignment := paCenter;

  MenuItem7 := TMenuItem.Create(PopupMenu3);
  MenuItem7.Action := Action1;
  PopupMenu3.Items.Add(MenuItem7);
  MenuItem8 := TMenuItem.Create(PopupMenu3);
  MenuItem8.Action := Action2;
  PopupMenu3.Items.Add(MenuItem8);
  MenuItem9 := TMenuItem.Create(PopupMenu3);
  MenuItem9.Caption := '-';
  PopupMenu3.Items.Add(MenuItem9);
  MenuItem10 := TMenuItem.Create(PopupMenu3);
  MenuItem10.Action := Action3;
  PopupMenu3.Items.Add(MenuItem10);
  PopupMenu3.Parent := self;

  ImageList1 := glob.ImageListFromFolder(glob.path_ImageList1, self);

  BCButton1 := TBCButton.Create(self);
  BCButton1.Left := 24;
  BCButton1.Height := 40;
  BCButton1.Top := 54;
  BCButton1.Width := 128;
  BCButton1.Caption := 'Action1';
  BCButton1.Action := Action1;
  BCButton1.Images := ImageList1;
  gui_settings_controls.applyButtonSettings(BCButton1);
  BCButton1.Parent := self;

  BCButton2 := TBCButton.Create(self);
  BCButton2.Left := 24;
  BCButton2.Height := 40;
  BCButton2.Top := 184;
  BCButton2.Width := 264;
  BCButton2.Caption := 'Default DropDown area';
  BCButton2.PopupMenu := PopupMenu1;
  BCButton2.Style := bbtDropDown;
  BCButton2.DropDownMenu := PopupMenu1;
  BCButton2.Images := ImageList1;
  BCButton2.ImageIndex := 9;
  gui_settings_controls.applyButtonSettings(BCButton2);
  BCButton2.Parent := self;

  BCButton3 := TBCButton.Create(self);
  BCButton3.Left := 24;
  BCButton3.Height := 40;
  BCButton3.Top := 136;
  BCButton3.Width := 128;
  BCButton3.Caption := 'DropDownArrow';
  BCButton3.DropDownArrow := True;
  gui_settings_controls.applyButtonSettings(BCButton3);
  BCButton3.Parent := self;

  BCButton4 := TBCButton.Create(self);
  BCButton4.Left := 24;
  BCButton4.Height := 40;
  BCButton4.Top := 280;
  BCButton4.Width := 264;
  BCButton4.Caption := 'Flipped arrow and Right aligned Popup';
  BCButton4.Style := bbtDropDown;
  BCButton4.InnerMargin := 20;
  BCButton4.PopupMenu := PopupMenu1;
  BCButton4.DropDownMenu := PopupMenu3;
  BCButton4.FlipArrow := true;{flipArrow can't correctly...}
  { set top dropdown alignment}
  BCButton4.Images := ImageList1;
  BCButton4.ImageIndex := 10;
  gui_settings_controls.applyButtonSettings(BCButton4);
  BCButton4.Parent := self;

  BCButton5 := TBCButton.Create(self);
  BCButton5.Left := 296;
  BCButton5.Height := 88;
  BCButton5.Top := 184;
  BCButton5.Width := 136;
  BCButton5.Caption := 'DropDown part at the bottom';
  BCButton5.Style := bbtDropDown;
  BCButton5.DropDownPosition := bdpBottom;
  BCButton5.PopupMenu := PopupMenu1;
  BCButton5.DropDownMenu := PopupMenu1;
  gui_settings_controls.applyButtonSettings(BCButton5);
  BCButton5.Parent := self;

  BCButton7 := TBCButton.Create(self);
  BCButton7.Left := 160;
  BCButton7.Height := 40;
  BCButton7.Top := 54;
  BCButton7.Width := 128;
  BCButton7.Caption := 'ImageIndex';
  BCButton7.Images := ImageList1;
  BCButton7.ImageIndex := 2;
  gui_settings_controls.applyButtonSettings(BCButton7);
  BCButton7.Parent := self;

  BCButton8 := TBCButton.Create(self);
  BCButton8.Left := 160;
  BCButton8.Height := 40;
  BCButton8.Top := 136;
  BCButton8.Width := 128;
  BCButton8.Caption := 'DropDownMenu';
  BCButton8.DropDownArrow := True;
  BCButton8.DropDownMenu := PopupMenu1;
  gui_settings_controls.applyButtonSettings(BCButton8);
  BCButton8.Parent := self;

  BCButton9 := TBCButton.Create(self);
  BCButton9.Left := 24;
  BCButton9.Height := 40;
  BCButton9.Top := 328;
  BCButton9.Width := 264;
  BCButton9.Caption := 'Common DropDown area';
  BCButton9.Style := bbtDropDown;
  BCButton9.DropDownStyle := bdsCommon;
  BCButton9.PopupMenu := PopupMenu1;
  BCButton9.DropDownMenu := PopupMenu1;
  BCButton9.Images := ImageList1;
  BCButton9.ImageIndex := 11;
  gui_settings_controls.applyButtonSettings(BCButton9);
  BCButton9.Parent := self;

  BCButton6 := TBCButton.Create(self);
  BCButton6.Left := 24;
  BCButton6.Height := 40;
  BCButton6.Top := 232;
  BCButton6.Width := 264;
  BCButton6.Caption := 'Right aligned Popup';
  BCButton6.Style := bbtDropDown;
  BCButton6.PopupMenu := PopupMenu1;
  BCButton6.DropDownMenu := PopupMenu3;
  BCButton6.DropDownMenu.Alignment := paRight;
  BCButton6.Images := ImageList1;
  BCButton6.ImageIndex := 12;
  gui_settings_controls.applyButtonSettings(BCButton6);
  BCButton6.Parent := self;

  BCButton10 := TBCButton.Create(self);
  BCButton10.Left := 296;
  BCButton10.Height := 88;
  BCButton10.Top := 280;
  BCButton10.Width := 136;
  BCButton10.Caption := 'DropDown part at the bottom (Common)';
  BCButton10.Style := bbtDropDown;
  BCButton10.PopupMenu := PopupMenu1;
  BCButton10.DropDownStyle := bdsCommon;
  BCButton10.DropDownPosition := bdpBottom;
  BCButton10.DropDownMenu := PopupMenu1;
  gui_settings_controls.applyButtonSettings(BCButton10);
  BCButton10.Parent := self;

  CheckBox1 := TCheckBox.Create(self);
  CheckBox1.Left := 301;
  CheckBox1.Height := 17;
  CheckBox1.Top := 66;
  CheckBox1.Width := 90;
  CheckBox1.Caption := 'Show Caption';
  CheckBox1.Checked := True;
  CheckBox1.OnChange := @CheckBox1_onChange;
  CheckBox1.State := cbChecked;
  CheckBox1.TabOrder := 0;
  CheckBox1.Parent := self;

  BCPanel1 := TBCPanel.Create(self);
  BCPanel1.Left := 0;
  BCPanel1.Height := 33;
  BCPanel1.Top := 0;
  BCPanel1.Width := 588;
  BCPanel1.Align := alTop;
  BCPanel1.TabOrder := 1;
  gui_settings_controls.applyPanelSettings(BCPanel1);
  BCPanel1.Parent := self;

  Shape1 := TShape.Create(BCPanel1);
  Shape1.Left := 0;
  Shape1.Height := 1;
  Shape1.Top := 32;
  Shape1.Width := 588;
  Shape1.Align := alBottom;
  Shape1.Pen.Color := clBtnShadow;
  Shape1.Parent := BCPanel1;

  BCButton11 := TBCButton.Create(BCPanel1);
  BCButton11.Left := 2;
  BCButton11.Height := 28;
  BCButton11.Top := 2;
  BCButton11.Width := 40;
  BCButton11.Images := ImageList1;
  BCButton11.ImageIndex := 1;
  BCButton11.Caption := 'Back';
  BCButton11.ShowCaption := False;
  gui_settings_controls.applyPanelButtonSettings(BCButton11);
  BCButton11.Parent := BCPanel1;

  BCButton12 := TBCButton.Create(BCPanel1);
  BCButton12.Left := 44;
  BCButton12.Height := 28;
  BCButton12.Top := 2;
  BCButton12.Width := 40;
  BCButton12.Caption := 'Forward';
  BCButton12.ShowCaption := False;
  BCButton12.Images := ImageList1;
  BCButton12.ImageIndex := 0;
  gui_settings_controls.applyPanelButtonSettings(BCButton12);
  BCButton12.Parent := BCPanel1;

  BCButton13 := TBCButton.Create(BCPanel1);
  BCButton13.Left := 86;
  BCButton13.Height := 28;
  BCButton13.Top := 2;
  BCButton13.Width := 40;
  BCButton13.Caption := 'Refresh';
  BCButton13.ShowCaption := False;
  BCButton13.Images := ImageList1;
  BCButton13.ImageIndex := 2;
  gui_settings_controls.applyPanelButtonSettings(BCButton13);
  BCButton13.Parent := BCPanel1;

  Bevel1 := TBevel.Create(BCPanel1);
  Bevel1.Left := 128;
  Bevel1.Height := 28;
  Bevel1.Top := 2;
  Bevel1.Width := 2;
  Bevel1.Align := alLeft;
  Bevel1.BorderSpacing.Top := 2;
  Bevel1.BorderSpacing.Bottom := 2;
  Bevel1.Shape := bsLeftLine;
  Bevel1.Parent := BCPanel1;

  BCButton14 := TBCButton.Create(BCPanel1);
  BCButton14.Left := 333;
  BCButton14.Height := 28;
  BCButton14.Top := 2;
  BCButton14.Width := 93;
  BCButton14.Caption := 'Zoom In';
  BCButton14.ShowCaption := True;
  BCButton14.Images := ImageList1;
  BCButton14.ImageIndex := 4;
  gui_settings_controls.applyPanelButtonSettings(BCButton14);
  BCButton14.Parent := BCPanel1;

  BCButton15 := TBCButton.Create(BCPanel1);
  BCButton15.Left := 428;
  BCButton15.Height := 28;
  BCButton15.Top := 2;
  BCButton15.Width := 101;
  BCButton15.Caption := 'Zoom Out';
  BCButton15.ShowCaption := True;
  BCButton15.Images := ImageList1;
  BCButton15.ImageIndex := 5;
  gui_settings_controls.applyPanelButtonSettings(BCButton15);
  BCButton15.Parent := BCPanel1;

  BCButton16 := TBCButton.Create(BCPanel1);
  BCButton16.Left := 250;
  BCButton16.Height := 28;
  BCButton16.Top := 2;
  BCButton16.Width := 81;
  BCButton16.Caption := 'Zoom';
  BCButton16.ShowCaption := True;
  BCButton16.DropDownArrow := True;
  BCButton16.Images := ImageList1;
  BCButton16.ImageIndex := 3;
  gui_settings_controls.applyPanelButtonSettings(BCButton16);
  BCButton16.Parent := BCPanel1;

  BCButton17 := TBCButton.Create(BCPanel1);
  BCButton17.Left := 132;
  BCButton17.Height := 28;
  BCButton17.Top := 2;
  BCButton17.Width := 70;
  BCButton17.Images := ImageList1;
  BCButton17.ImageIndex := 6;
  BCButton17.Caption := 'Print';
  BCButton17.ShowCaption := True;
  gui_settings_controls.applyPanelButtonSettings(BCButton17);
  BCButton17.Parent := BCPanel1;

  Bevel2 := TBevel.Create(BCPanel1);
  Bevel2.Left := 246;
  Bevel2.Height := 28;
  Bevel2.Top := 2;
  Bevel2.Width := 2;
  Bevel2.Align := alLeft;
  Bevel2.BorderSpacing.Top := 2;
  Bevel2.BorderSpacing.Bottom := 2;
  Bevel2.Shape := bsLeftLine;
  Bevel2.Parent := BCPanel1;

  BCButton18 := TBCButton.Create(BCPanel1);
  BCButton18.Left := 204;
  BCButton18.Height := 28;
  BCButton18.Top := 2;
  BCButton18.Width := 40;
  BCButton18.Caption := 'Print Setup... ';
  BCButton18.ShowCaption := False;
  BCButton18.Images := ImageList1;
  BCButton18.ImageIndex := 7;
  gui_settings_controls.applyPanelButtonSettings(BCButton18);
  BCButton18.Parent := BCPanel1;

end;


{Form Actions}
procedure TFormBcSample.Form_onClick(Sender: TObject);
begin
  Close;
end;

procedure TFormBcSample.CheckBox1_onChange(Sender: TObject);
begin
  BCButton1.ShowCaption := CheckBox1.Checked;
  BCButton7.ShowCaption := CheckBox1.Checked;
end;

initialization

end.
