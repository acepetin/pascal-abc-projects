program lab_1;

uses 
Unit_dop,
// Set_of_char;
 Set_of_boolean;
//Set_of_record;

var
  a, b, c, r1, r2, r3, r4: Tset;
  f, out_f: TextFile;
  name_metod: string;
begin
    if (not FileExists('a.txt')) or  (not FileExists('b.txt')) or  (not FileExists('c.txt'))  then
        WriteLn('Невозможно открыть один из файлов')
    else
        begin
            Assign(out_f,'output.txt');
            append(out_f);
            
            Name(name_metod);
            writeln(out_f, 'Расчет операций через: ', name_metod);
            writeln(out_f, 'Считываем файл "а"');
            Assign(f,'a.txt');
            Reset(f);
            Create(a);
            input(a,f);

            writeln(out_f, 'Считываем файл "b"');
            Assign(f,'b.txt');
            Reset(f);
            Create(b);
            input(b,f);
            
            writeln(out_f, 'Считываем файл "c"');
            Assign(f,'c.txt');
            Reset(f);
            Create(c);
            input(c,f);
            
            close(f);
            
            Create(r1);
            writeln(out_f, 'Обьединение элементов из "а" и "b": ');
            Union(a,b,r1);
            Output(r1,out_f); 
            
            Create(r2);
            writeln(out_f, 'Пересечение элементов из "а" и "b": ');
            Intersection(a,b,r2);
            Output(r2,out_f);
            
            Create(r3);
            writeln(out_f, 'Разность элементов из "а" и "b": ');
            Difference(a,b,r3);
            Output(r3,out_f);
            
            Create(r4);
            writeln(out_f, 'Расчет формулы для варианта 16+2 для "а", "b" и "с": ');
            Formula(a,b,c,r4);
            Output(r4,out_f);
            writeln(out_f, '___________________________________________________________________');
            
            Close(out_f);
        end;
end.