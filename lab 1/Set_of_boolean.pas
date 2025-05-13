unit Set_of_boolean;

interface

type Tset = array[1..256] of boolean;

procedure Name(var name: string);
procedure Create(var S:Tset);
function IsIn(ch:char;const S:Tset):boolean;
procedure AddSet(ch:char;var S:Tset);
procedure DelSet(ch:char;var S:Tset);

implementation 

procedure Name(var name: string);
begin
  name := 'Set_of_boolean';
end;

procedure Create(var S:Tset);
var 
i:integer;
begin
    for i:=1 to 256 do 
        s[i] := False;
end;

procedure AddSet(ch:char;var S:Tset);
begin
    if not IsIn(ch,S) then 
        S[Ord(ch)+1] := True;  
end;

procedure DelSet(ch:char;var S:Tset);
begin
    if  IsIn(ch,S) then 
        S[Ord(ch)+1] := False;  
end;

function IsIn(ch:char;const S:Tset):boolean;
begin
    IsIn := S[Ord(ch)+1];
end;
end.