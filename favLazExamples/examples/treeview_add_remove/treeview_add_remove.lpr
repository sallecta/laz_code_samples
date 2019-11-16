program treeview_add_remove;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces,
  Forms,
  uForm1;



begin
  Application.Title:='treeview_add_remove';
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
    
