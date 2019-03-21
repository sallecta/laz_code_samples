program spinEditLooped;

uses
  Interfaces,
  Forms,
  form_Main,
  gvars;

begin

  RequireDerivedFormResource := False;
  Application.Initialize;
  Application.CreateForm(Tform_main, gvars.f_main);
  Application.Run;

end.
