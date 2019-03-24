unit typeForm1;

{$mode objfpc}{$H+}

interface

uses Interfaces, Forms, StdCtrls, Classes, SysUtils, FileUtil, Controls;

type TForm1 = class(TForm)
    {Form Creation}
    constructor Create({!}AOwner: TComponent); override;
    {Form Controls}
  var //fields can't appear after method, let's use vars instead
    MyButton: TButton;
    {Form Actions}
    procedure Form1_onClick(Sender: TObject);
    procedure Form1_onMouseDown(Sender: TObject; mouseBtn: TMouseButton;
  Shift: TShiftState; posX, posY: integer);
  end;

implementation
uses glob;
{Form Creation}
constructor TForm1.Create(AOwner: TComponent);
begin

  {!}inherited CreateNew(AOwner, 1);{!}
  Caption :=glob.appname;
  Position := poScreenCenter;
  Height := 100;
  Width := 370;
  VertScrollBar.Visible := False;
  HorzScrollBar.Visible := False;
  OnClick := @Form1_onClick;
  OnMouseDown :=  @Form1_onMouseDown;
  {Form Controls}
  MyButton := TButton.Create(Self);
  with MyButton do
  begin
    Height := 30;
    Left := 140;
    Top := 32;
    Width := 100;
    Caption := 'Close';
    {MyButton.}OnClick := @Form1_onClick;
    Parent := Self;// self is TForm1
  end;
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
  Sender := Sender;posX:=posX;posY:=posY;mouseBtn:=mouseBtn;Shift:=Shift;
  //real actions
  Close;
end;

end.

