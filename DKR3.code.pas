Uses Crt;
Var PROGRAMMA: Byte;
function f(x: real):real;
begin
 f:= 2 * power(x,3) + (-2) * power(x,2) + 3 * x + 8;
end;
function F1(x: real):real;
begin
 F1:= (2*x * (power(x,4)/4) + ((-2)*x) * (power(x,3)/3) + (3*x*x)/2 + 8 * x);
end;
procedure proc1;
begin
var a,b,n,i:integer;
var S,h,x:real;
begin
write('Введите левую и правую границу отрезка: ');
  readln(a,b);
  write('Введите количество подотрезков: ');
  read(n);
  h:= (b-a)/n;
  x:= a + (h/2);
  for i:=0 to n-1 do
  begin
    S+= f(x);
    x+= h
  end;
  S*= h;
  println(S);
end; 
end;
procedure proc2;
begin 
var a,b,n,i:integer;
var y,S,h,x:real;
begin
write('Введите левую и правую границу отрезка: ');
  readln(a,b);
  write('Введите количество подотрезков: ');
  read(n);
  h:= (b-a)/n;
  x:= a + (h/2);
  for i:=0 to n-1 do
  begin
    S+= f(x);
    x+= h
  end;
  S*= h;
  println('Площадь=',S)
  y:= F1(b)-F1(a);
  println('Погрешность=',abs(y-S)/y);
end; 
end;
begin
repeat
WriteLn('С погрешностью - 1');
WriteLn('Погрешность - 2');
WriteLn('Выход - 0');
Write('Введите номер программы: ');
ReadLn(PROGRAMMA);
Case PROGRAMMA of
1: proc1;
2: proc2;
end;
until PROGRAMMA = 0;
end.