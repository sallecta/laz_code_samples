program gui_resourceless;
{$ifdef WIN32}
  {$APPTYPE GUI}
{$ENDIF}

///$DEFINE console}

uses
  Interfaces, Forms,
  form_Main;

var
  f_main: Tform_main;

begin

  RequireDerivedFormResource:=False;

  Application.Initialize;

  Application.CreateForm(Tform_main, f_main);

  {app taskbar icon}
  Application.Icon.LoadFromFile('media'+DirectorySeparator+'MyIcon.ico');
  {end app taskbar icon}

  Application.Run;


end.
