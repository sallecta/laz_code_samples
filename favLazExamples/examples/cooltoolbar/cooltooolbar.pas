program cooltooolbar;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='cooltooolbar';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TCoolBarDemo, CoolBarDemo);
  Application.Run;
end.

