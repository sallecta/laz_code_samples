unit form_Main;

{$mode objfpc}{$H+}

interface

uses Interfaces, Forms, StdCtrls, Classes;

type Tform_main = class(TForm)
    {Form Creation}
    constructor Create({!}AOwner: TComponent); override;
    {Form Controls}
  var //fields can't appear after method, let's use vars instead
    MyButton: TButton;
    {Form Actions}
    procedure CloseMainForm(ASender: TObject);
    {Form Logic}
    procedure logic();
  end;

implementation
{Form Creation}
constructor Tform_main.Create(AOwner: TComponent);
begin
  {!}inherited CreateNew(AOwner, 1);{!}
  Position := poScreenCenter;
  Height := 400;
  Width := 400;
  VertScrollBar.Visible := False;
  HorzScrollBar.Visible := False;
  {Form Controls}
  MyButton := TButton.Create(Self);
  with MyButton do
  begin
    Height := 30;
    Left := 100;
    Top := 100;
    Width := 100;
    Caption := 'Close';
    {MyButton.}OnClick := @CloseMainForm;
    Parent := Self;
  end;
  logic;
end;
{Form Actions}
procedure Tform_main.CloseMainForm(ASender: TObject);
begin
  ASender := ASender;//to get rid of Hint: Parameter "ASender" not used
  Close;
end;



{Form Logic}
procedure Tform_main.logic();
begin
  writeln('Tform_main.logic');
end;

end.

