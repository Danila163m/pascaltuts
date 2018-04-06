var
  a: array[1..1000] of integer;
  N, i, j, n_pow: integer;
  d, r: real;

begin
  write('N = ');
  readln(N);
  write('Введите ', N, ' целых чисел: ');
  for i := 1 to N do read(a[i]);

  {Возводим элементы массива в степень}
  for i := 1 to N do
  begin
    n_pow := N + 1 - i;
    d := a[i];
    if n_pow mod 2 <> 0 then r := d else r := 1; //в r будет записываться результат
    while n_pow > 1 do
    begin
      n_pow := n_pow div 2;
      d := d * d;
      if n_pow mod 2 <> 0 then r := r * d;
    end;
    writeln(a[i], ' в степени ', N + 1 - i, ' равно ', r);
  end;
end.
