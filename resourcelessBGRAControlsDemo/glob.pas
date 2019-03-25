unit glob;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, StdCtrls,
  typeForm1, typeFormBcSample;

const
  path_media = 'media';
  path_media_s = path_media + DirectorySeparator;

var
  namemain,namesub1: string;
  Form1: typeForm1.TForm1;
  FormBcSample: typeFormBcSample.TFormBcSample;


type
  TFormBcSample = typeFormBcSample.TFormBcSample;


implementation

initialization
  namemain := Application.Title;
  namesub1 := 'BcSample, '+namemain

end.
