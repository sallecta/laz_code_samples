program myclasses;

{$mode objfpc}// directive to be used for defining classes
{$m+}// directive to be used for using constructor

uses
  unit_myclasses;

var
  classInstance: TMyClass;

begin

  classInstance := TMyClass.Create;
  writeln('classInstance.VarPublic: ', classInstance.VarPublic);
  writeln('length(classInstance.ArrayPublic): ', length(classInstance.ArrayPublic));

end.
