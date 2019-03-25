unit unit_myclasses;

{$mode objfpc}

interface

type
  TypeOfMyClass = class
  public
    constructor Create; overload;
  var
    VarPublic: integer;
  var
    ArrayPublic: array of string;
  end;

implementation

constructor TypeOfMyClass.Create;
begin
  inherited;
  writeln('TMyClass.Create');
  self.VarPublic := 7;
  SetLength(self.ArrayPublic,0);
end;

end.
