unit unit_myclasses;

{$mode objfpc}// directive to be used for defining classes
{$m+}// directive to be used for using constructor

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
  writeln('Classes works if {$mode objfpc} specified');
  writeln('Class Constructor works if {$m+} specified');
  self.VarPublic := 7;
  SetLength(self.ArrayPublic,0);
end;

end.
