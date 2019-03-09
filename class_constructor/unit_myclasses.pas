unit unit_myclasses;

{$mode objfpc}

interface

type
  TMyClass = class
  public
    constructor Create; overload;
  var
    VarPublic: integer;
  var
    ArrayPublic: array of string;
  end;

implementation

constructor TMyClass.Create;
begin
  inherited;
  writeln('TMyClass.Create');
  self.VarPublic := 7;
  SetLength(self.ArrayPublic,0);
end;

end.
