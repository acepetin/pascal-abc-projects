unit Set_of_record;

interface

type 
Tset = record x:array of char; n:integer; 
end; 

function Name(var name: string);
procedure Create(var S:Tset);
function IsIn(ch:char;const S:Tset):boolean;
procedure AddSet(ch:char;var S:Tset);
procedure DelSet(ch:char;var S:Tset);

implementation

procedure Name(var name: string);
begin
  name := 'Set_of_record';
end;

procedure Create(var S:Tset);
begin
    s.n := 0;
    SetLength(s.x,s.n);
end;

function IsIn(ch:char;const S:Tset):boolean;
var 
i:integer;
flag:boolean;
begin
    i := 0;
    flag := False;
   
    while (i < S.n ) and (not flag) do 
        begin
            if S.x[i] = ch then 
                flag := True
            else
                i := i + 1;
        end;
    
    IsIn := flag;
end;

procedure AddSet(ch:char;var S:Tset);
begin
    if not IsIn(ch,S) then 
        begin
            SetLength(S.x,S.n+1);
            S.n := S.n + 1;
            S.x[S.n - 1] := ch; 
        end;
end;

procedure DelSet(ch:char;var S:Tset);
var 
i,j:integer;
begin
    if IsIn(ch,S) then
        begin 
            j := 0;
            for i := 0 to S.n - 1 do    
                if S.x[i] <> ch then 
                    begin
                        S.x[i] := S.x[j];
                        j := j + 1;
                    end;
            S.n := S.n - 1;
            SetLength(S.x,S.n);
        end;
end;
end.