unit Set_of_char;

interface 

type
    Tset = set of char;

function Name(var name: string);
procedure Create(var S:Tset);
procedure AddSet(ch:char;var S:Tset);
procedure DelSet(ch:char;var S:Tset);
function IsIn(ch:char;const S:Tset):boolean;

implementation

procedure Name(var name: string);
begin
  name := 'Set_of_char';
end;

procedure Create(var S:Tset);
begin
    S := [];
end;

procedure AddSet(ch:char;var S:Tset);
begin
    if not IsIn(ch,S) then
        S := S + [ch];
end;

procedure DelSet(ch:char;var S:Tset);
begin
    if  IsIn(ch,S) then
        S := S - [ch];
end;


function IsIn(ch:char;const S:Tset):boolean;
begin
    if ch in S then
        IsIn := True
    else
        IsIn := False;
end;


end.