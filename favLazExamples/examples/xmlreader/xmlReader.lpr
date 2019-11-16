program xmlReader;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, uXmlReader;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TXMLReaderForm, XMLReaderForm);
  Application.Run;
end.

