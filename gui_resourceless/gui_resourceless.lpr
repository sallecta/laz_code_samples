program gui_resourceless;

uses
  Interfaces, Forms,
  typeForm1;

var
  Form1: TForm1;

begin

  RequireDerivedFormResource:=False;

  Application.Initialize;

  Application.CreateForm(TForm1, Form1);

  {app taskbar icon}
  Application.Icon.LoadFromFile('media'+DirectorySeparator+'MyIcon.ico');
  {end app taskbar icon}

  Application.Run;


end.
