program resourcelessBGRAControlsDemo;

uses
  Interfaces, Forms,
  typeForm1, glob;

begin

  RequireDerivedFormResource:=False;

  Application.Initialize;

  //create main form and store its reference in glob unit variable
  Application.CreateForm(TForm1, glob.Form1);

  {app taskbar icon}
  Application.Icon.LoadFromFile(glob.path_media_s+'MyIcon.ico');
  {end app taskbar icon}

  Application.Run;
  //glob.Form1.Position:= poDesktopCenter;


end.
