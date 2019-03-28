unit typeForm1;

{$mode objfpc}{$H+}

interface

uses Interfaces, Forms, StdCtrls, Classes, SysUtils, FileUtil, Controls;

var
  appname: string;

type TForm1 = class(TForm)
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
constructor TForm1.Create(AOwner: TComponent);
begin

  {!}inherited CreateNew(AOwner, 1);{!}
  Caption :=appname;
  Position := poScreenCenter;
  Height := 100;
  Width := 350;
  VertScrollBar.Visible := False;
  HorzScrollBar.Visible := False;
  OnClick := @CloseMainForm;
  OnMouseDown :=  @From1onMouseDown;
  {Form Controls}
  MyButton := TButton.Create(Self);
  with MyButton do
  begin
    Height := 30;
    Left := 120;
    Top := 32;
    Width := 100;
    Caption := 'Close';
    {MyButton.}OnClick := @CloseMainForm;
    Parent := Self;
  end;
end;
{Form Actions}
procedure TForm1.CloseMainForm(ASender: TObject);
begin
  ASender := ASender;//to get rid of Hint: Parameter "ASender" not used
  Close;
end;
procedure TForm1.From1onMouseDown(Sender: TObject; mouseBtn: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin
  Sender := Sender;//to get rid of Hint: Parameter "ASender" not used
  Close;
end;

initialization
  appname := Application.Title;

end.

