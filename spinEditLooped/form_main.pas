unit form_Main;

{$mode objfpc}{$H+}

interface

uses Classes, Forms, Spin, SysUtils{intToStr};

type
  Tform_main = class(TForm)
    {Form Creation}
    constructor Create({!}AOwner: TComponent); override;

    {Form Controls}
  var //fields can't appear after method, let's use vars instead
    SpinEd1: TSpinEdit;

    {Form events}
    procedure SpinEd1_onChange(Sender: TObject);
  end;

implementation

uses gvars;

{Form Creation}
constructor Tform_main.Create(AOwner: TComponent);
begin

  {!}inherited CreateNew(AOwner, 1);{!}
  Caption := Application.Title;
  Position := poScreenCenter;
  Height := 100;
  Width := 320;
  VertScrollBar.Visible := False;
  HorzScrollBar.Visible := False;
  {Form Controls}
  SpinEd1 := TSpinEdit.Create(Self);
  SpinEd1.Height := 30;
  SpinEd1.Left := 100;
  SpinEd1.Top := 32;
  SpinEd1.Width := 100;
  SpinEd1.Caption := 'Close';
  SpinEd1.Increment := 1;
  SpinEd1.MaxValue := 7 + SpinEd1.Increment;//provides loop to beginning
  SpinEd1.MinValue := 1 - SpinEd1.Increment;//provides loop to end
  SpinEd1.Value := 1;
  SpinEd1.OnChange := @SpinEd1_onChange;
  SpinEd1.Parent := Self;   //i.e Tform_main instance
end;

procedure Tform_main.SpinEd1_onChange(Sender: TObject);
begin
  //spin edit loop from min value + increment to max value - increment
  if gvars.f_main.SpinEd1.Value = gvars.f_main.SpinEd1.MaxValue then
    gvars.f_main.SpinEd1.Value :=
      gvars.f_main.SpinEd1.MinValue + gvars.f_main.SpinEd1.Increment
  else if gvars.f_main.SpinEd1.Value = gvars.f_main.SpinEd1.MinValue then
    gvars.f_main.SpinEd1.Value :=
      gvars.f_main.SpinEd1.MaxValue - gvars.f_main.SpinEd1.Increment
  else // start of actual code
    gvars.f_main.Caption := 'looped spin: ' + IntToStr(gvars.f_main.SpinEd1.Value);
  ;//ens of actual code
end;

end.
