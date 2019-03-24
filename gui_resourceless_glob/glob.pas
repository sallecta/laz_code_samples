unit glob;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, StdCtrls,
  typeForm1;

const
  path_media = 'media';
  path_media_s = path_media + DirectorySeparator;

var
  appname: string;
  Form1: typeForm1.TForm1;


implementation

initialization
  appname := Application.Title;

end.
