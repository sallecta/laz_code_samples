program myclasses;

{$mode objfpc}

uses
  unit_myclasses;

var
  classInstance: TMyClass;

begin

  classInstance := TMyClass.Create;
  writeln('classInstance.VarPublic: ', classInstance.VarPublic);
  writeln('length(classInstance.ArrayPublic): ', length(classInstance.ArrayPublic));

end.
