program codegui;

uses
  Interfaces, Forms, StdCtrls,
  form_Main;

var
  f_main: Tform_main;
begin
  RequireDerivedFormResource:=False;
  Application.Initialize;
  Application.CreateForm(Tform_main, f_main);
  Application.Run;
end.
