unit form_Main;

{$mode objfpc}{$H+}

interface

uses Interfaces, Forms, StdCtrls, Classes, SysUtils, FileUtil, Controls;

type Tform_main = class(TForm)
    {Form Creation}
    constructor Create({!}AOwner: TComponent); override;
    {Form Controls}
  var //fields can't appear after method, let's use vars instead
    MyButton: TButton;
    {Form Actions}
    procedure CloseMainForm(ASender: TObject);
    procedure From1onMouseDown(Sender: TObject; mouseBtn: TMouseButton;
  Shift: TShiftState; X, Y: integer);
  end;

implementation
{Form Creation}
constructor Tform_main.Create(AOwner: TComponent);
begin

  {!}inherited CreateNew(AOwner, 1);{!}
  Caption :='gui_resourceless';
  Position := poScreenCenter;
  Height := 100;
  Width := 300;
  VertScrollBar.Visible := False;
  HorzScrollBar.Visible := False;
  OnClick := @CloseMainForm;
  OnMouseDown :=  @From1onMouseDown;
  {Form Controls}
  MyButton := TButton.Create(Self);
  with MyButton do
  begin
    Height := 30;
    Left := 100;
    Top := 32;
    Width := 100;
    Caption := 'Close';
    {MyButton.}OnClick := @CloseMainForm;
    Parent := Self;
  end;
end;
{Form Actions}
procedure Tform_main.CloseMainForm(ASender: TObject);
begin
  ASender := ASender;//to get rid of Hint: Parameter "ASender" not used
  Close;
end;
procedure Tform_main.From1onMouseDown(Sender: TObject; mouseBtn: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin
  Sender := Sender;//to get rid of Hint: Parameter "ASender" not used
  Close;
end;



end.

