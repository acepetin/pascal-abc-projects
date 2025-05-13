program lab_1;


//uses
//....

var
a, b, c, r1, r2, r3, r4 : Tset;
f, out_f: TextFile;
name_method: string;
  
begin
  if (not FileExists('a.txt')) or (not FileExists('b.txt')) or (not FileExists('c.txt')) then
    writeln('Невозможно открыть один из файлов')
  else
  begin
    Assign(out_f, 'output.txt');
    append(out_f);
    
    Name(name_method);
    writeln(out_f, 'Расчет операций через: ', name_method);
    writeln(out_f, 'Считываем файл а');
    Assign(f, 'a.txt');
    Reset(f);
    Create(a);
    input(a, f);
    
    writeln(out_f, 'Считываем файл b');
    Assign(f, 'b.txt');
    Reset(f);
    Create(b);
    input(b, f);
    
    writeln(out_f, 'Считываем файл c');
    Assign(f, 'c.txt');
    Reset(f);
    Create(c);
    Input(c, f);
    
    close(f);
    
    Create(r1);
    writeln(out_f, 'Объединение элементов из а и b');
    Union(a, b, r1);
    Output(r1, out_f);
  end;
end.

