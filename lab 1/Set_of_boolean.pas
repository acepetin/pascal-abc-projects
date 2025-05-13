unit Unit_dop;

interface
uses
// Set_of_char;
//Set_of_boolean;
//Set_of_record;

procedure input(var S:Tset;var f: Text);


implementation
procedure input(var S:Tset;var f: Text);
var
ch : char;
begin
  while not eof(f) do
  begin
    read(f, ch);
    AddSet(ch,S);
  end;
end;
end.