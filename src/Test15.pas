program Test15;

uses MyModude;

procedure question1;
type
  day = (yesterday, today, tomorrow);
  vector = array [-1..1] of real;
var 
  a: vector;
  b: array [-3..3] of (x, y, z, w);
  c: array ['a'..'z'] of vector;
  d: array [day] of 0..23;

begin
  WriteLn('Вопрос № 1');
  
  //a[-2] := -1;
  a[-1] := -1;
  a[0] := 0;
  a[1] := 1;
  //a[2] := 2;
  // 3
  
  b[-3] := x;
  b[-2] := y;
  b[-1] := z;
  b[0] := w;
  b[1] := z;
  b[2] := y;
  b[3] := x;
  // 7
  
  c['a'] := a;
  c['b'] := a;
  c['c'] := a;
  //...
  c['z'] := a;
  // 26
  
  d[yesterday] := 0;
  d[today] := 1;
  d[tomorrow] := 23;
  // 3
  
  // 3 + 7 + 26 + 3 = 39
  
end;

procedure question2;
begin
  WriteLn('Вопрос № 2');
  
  WriteLn(APlusBPlusC(2, 2));
  
  // Модуль System является основной библиотекой, куда входят все предопределенные
  // процедуры и функции стандарта языка Паскаль а также подпрограммы
  // общего назначения (управление вводом-выводом, работа со строками, статической
  // и динамической памятью и т. д.).
  
  // Модуль Crt обеспечивает возможности для доступа к экрану дисплея в текстовом
  // режиме и средства чтения информации с клавиатуры и простейшее управление
  // звуком.
  
  // В графическом режиме экран монитора разбивается на Y пикселов по вертикали
  // и X пикселов по горизонтали и представляет собой матрицу пикселов. 

  // Неотрицательные значения целого типа X и Y определяются выбранным типом
  // графического драйвера и типом графического режима, а такжетехническими
  // параметрами монитора и компьютера.
  
end;


function f(n: integer): integer;
begin
if n>100 then f:=n-10
else f:=f(f(n+11))
end;

procedure question3;
begin
  WriteLn('Вопрос № 3');
  WriteLn(f(96));  // 91
end;


procedure question4;
type 
  point1 = array [(x, y)] of real;
  point2 = record 
    x, y: real 
  end;
  complex = record 
    re, im: real 
  end;
var 
  p1: point1; 
  p2: point2; 
  c: complex;
begin
  WriteLn('Вопрос № 4');
  
  p1[x] := 100;
  p1[y] := 500;
  
  WriteLn(p1[succ(x)]);  // 500
  //WriteLn(p2.pred(x));
  //WriteLn(c.succ(x));
end;

procedure question5;
var
  i, k: Integer;
  cnt: Integer;
begin
  WriteLn('Вопрос № 5');
  
  cnt := 0;
  
  k:=0;
  for i:=1 to k+5 do begin
    k:=k+2;
    
    Inc(cnt);
  end;
  
  WriteLn(cnt);
  
end;

procedure question6;
var
  Str: String;
begin
  WriteLn('Вопрос № 6');
  
  Str:='абракадабра';
  insert('рак', Str, 3);
  write(Str);  // абракракадабра
end;

procedure question7;
begin
  WriteLn('Вопрос № 7');
  
  // Прост и понятен
  // Не требует знаний формальных описаний алгоритмов
  // Естественен
end;

procedure question8;
var
  a, b: Boolean;
begin
  WriteLn('Вопрос № 8');
  
  a:=false;
  b:=false;
  
  if b or (2=5) or (5>9) then  // -
    WriteLn('b or (2=5) or (5>9)');
    
  if (5<>5) or (a and b) or a then  // -
    WriteLn('(5<>5) or (a and b) or a');
    
  if not ((3<35) and (7>25) and a) then  // +
    WriteLn('not ((3<35) and (7>25) and a)');
end;

procedure question9;
var
  x, y: Integer;
begin
  WriteLn('Вопрос № 9');
  
  x := 3;
  
  if (0<x) then y:=x else if x<0 then y:=sqr(x);  // -
  WriteLn('y(', x, ') = ', y);
  
  if (x>=0) and (x<=0) then y:=x else y:=sqr(x);  // -
  WriteLn('y(', x, ') = ', y);
  
  if x>0 then y:=x else y:=sqr(x);  // +
  WriteLn('y(', x, ') = ', y);
  
end;

procedure question10;
var
  i, j: Integer;
begin
  WriteLn('Вопрос № 10');
  
  i:=1000; j:=39;
  while i>0 do
  begin
    j:=j+1;
    i:=i-1;
  end;
  
  WriteLn('j = ', j);
end;

procedure question11;
type {1}
  A = ^integer; {3}
  //C = ^B; {4}
  //B = record p: A; q: C end; {2}
var
  x: A;
begin
  WriteLn('Вопрос № 11');
end;

procedure question12;
begin
  WriteLn('Вопрос № 12');
  
  // [2..3,5.1,7.0]
  // [true..false]
  // [2,sqrt(9)]
  // ['=','>=','>']
  // [odd(7),0<2]

end;


//procedure P(x; var y: integer);
//begin y:=x+1 end;

procedure Q(x: integer; var y: integer);
begin y:=x+1 end;

procedure R(x, y: integer);
begin y:=x+1 end;

procedure question13;
begin
  WriteLn('Вопрос № 13');
  
  // 2
end;


procedure question14;

type numbers = file of integer;	
function sum(w: numbers): integer;	
  var k, c: integer;	
begin reset(w); k:=0;	
  repeat read(w, c); k:=k+c until eof(w);	 // Должно быть k:=k+1 вместо k:=k+c.
  sum:=k;	
  close(w) end;

var
  i: Integer;
  f: numbers;
begin
  WriteLn('Вопрос № 14');
  
  Assign(f, 'question14');
  Rewrite(f);
  for i := 1 to 14 do begin
    Write(f, i);
  end;
  Close(f);
  
  WriteLn(sum(f));
  
end;

procedure question15;
const 
  n=40;
var 
  x: array [1..n] of integer;
  i: integer; 
  t: boolean;
begin
  WriteLn('Вопрос № 15');
  
  for i := n downto 1 do 
    x[n - i + 1] := i;
  t := False;
  
  i:=1;
  repeat t:=x[i]<x[i+1]; i:=i+1
  until (not t) or (i=n);
  WriteLn(t);  // False
  
  t:=true;
  for i:=1 to n-1 do
  if x[i]<=x[i+1] then t:=false;
  WriteLn(t);  // True

{
  t:=true; i:=1;
  while t do
  if x[i+1]<x[i] then i:=i+1 else t:=false;
  WriteLn(t);
}

end;

var
  question: Integer;
begin
  question := 15;
  case question of
    1: question1;
    2: question2;
    3: question3;
    4: question4;
    5: question5;
    6: question6;
    7: question7;
    8: question8;
    9: question9;
    10: question10;
    11: question11;
    12: question12;
    13: question13;
    14: question14;
    15: question15;
  end;
end.
