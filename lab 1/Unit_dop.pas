unit Unit_dop;

interface

uses 
// Set_of_char;
 Set_of_boolean;
//Set_of_record;


procedure input(var S:Tset;var f:Text);
procedure Output(S:Tset;var f:Text);
procedure Union(S1:Tset;S2:Tset;var res:Tset);
procedure Intersection(S1:Tset;S2:Tset;var res:Tset);
procedure Difference(S1:Tset;S2:Tset;var res:Tset);
procedure Formula(S1:Tset;S2:Tset;S3:Tset;var res:Tset);
procedure copy_set(S:Tset;var res:Tset);

implementation

procedure input(var S:Tset;var f:Text);
var 
ch:char;
begin
    while not eof(f) do
        begin
            read(f,ch);
            AddSet(ch,S);
        end;
end;

procedure Output(S:Tset;var f:Text);
var 
i:integer;

begin
    for i:=1 to 255 do  
        begin
        if IsIn(chr(i),S) then
            write(f,chr(i),' ');
        end;
    WriteLn(f);
end;

procedure Union(S1:Tset;S2:Tset;var res:Tset);
var
i:integer;
begin
    copy_set(S1,res);
    for i:=1 to 255 do 
        if (IsIn(chr(i),S2)) then 
            AddSet(chr(i),res)
end;

procedure Intersection(S1:Tset;S2:Tset;var res:Tset);
var 
i:integer;
begin
    copy_set(S1,res);
    for i:=1 to 255 do 
        if (not IsIn(chr(i),S2)) then 
            DelSet(chr(i),res);
end;

procedure Difference(S1:Tset;S2:Tset;var res:Tset);
var 
i:integer;
begin
    copy_set(S1,res);
    for i:=1 to 255 do 
        if  IsIn(chr(i),S2) then 
            DelSet(chr(i),res);
end;

procedure Formula(S1:Tset;S2:Tset;S3:Tset;var res:Tset);
var
x1,x2:Tset;
begin
    Create(x1);
    Create(x2);
    Union(S1,S2,x1);
    Difference(S3,S1,x2);
    Union(x1,x2,res);
end;

procedure copy_set(S:Tset;var res:Tset);
var 
i:integer;
begin
    for i:=1 to 255 do 
        if IsIn(chr(i),S) then 
            AddSet(chr(i),res)
end;
end.