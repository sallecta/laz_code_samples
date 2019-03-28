unit glob;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, StdCtrls,Controls,
  typeForm1, typeFormBcSample, typeFormTest,
  graphics,FileUtil;

const
  ds = DirectorySeparator;
  path_media = 'media';
  path_media_s = path_media + DirectorySeparator;
  path_ImageList1 = path_media_s + 'subform'+ds+'ImageList1';
  path_ImageList1_s = path_ImageList1+ds;

var
  namemain,namesub1: string;
  Form1: typeForm1.TForm1;
  FormBcSample: typeFormBcSample.TFormBcSample;


type
  TFormBcSample = typeFormBcSample.TFormBcSample;

function bitmapFromFile(strFilenasme:string):TBitmap;
function ImageListFromFolder(strFolder:string;parent:TForm):TImageList;

implementation
function bitmapFromFile(strFilenasme:string):TBitmap;
  begin
    Result := TBitmap.Create;
    try
      // Load from disk
      Result.LoadFromFile(strFilenasme);
    finally
    end;
  end;
function ImageListFromFolder(strFolder:string;parent:TForm):TImageList;
  var
    files: TStringList;index:integer; bitmap:TBitmap;
begin
    files := TStringList.Create;
    try
      FindAllFiles(files, strFolder, '*.bmp', false);
      writeln(Format('Found %d files', [files.Count]));
      files.Sort;
      Result:= TImageList.Create(parent);
      for index:=0 to files.Count-1 do
      begin
           writeln('   filename: '+files[index]);
           bitmap := TBitmap.Create;
           bitmap.LoadFromFile(files[index]);
           Result.Add(bitmap, nil );
           bitmap.free;
      end;
    finally
      files.Free;
    end;
end;

initialization
  namemain := Application.Title;
  namesub1 := 'BcSample, '+namemain

end.
