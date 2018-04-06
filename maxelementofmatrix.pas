const N = 10;
var
    m: array[1..N,1..N] of integer;
    i, j: byte;
    max: integer;
begin
    randomize;
    for i:=1 to N do begin
        for j:=1 to N do begin
            m[i,j] := random(50);
            write(m[i,j]:3);
        end;
        writeln;
    end;
    max := i;
    for i:=2 to N do
        if m[i,i] > m[max,max] then
            max := i;
    writeln(max,',',max, ' = ', m[max,max]);
    max := 1;
    for i:=2 to N do
        if m[i,N-i+1] > m[max,N-max+1] then
            max := i;
    writeln(max,',',N-max+1, ' = ', m[max,N-max+1]);
end.