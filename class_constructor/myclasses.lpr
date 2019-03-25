program myclasses;

{$mode objfpc}

uses
  unit_myclasses;

var
  classInstance: TypeOfMyClass;

begin

  classInstance := TypeOfMyClass.Create;
  writeln('classInstance.VarPublic: ', classInstance.VarPublic);
  writeln('length(classInstance.ArrayPublic): ', length(classInstance.ArrayPublic));

end.
