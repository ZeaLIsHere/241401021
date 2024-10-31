program fibokimocci;
uses crt;

var
    i, n, x, y, z, sum: integer;

begin
    clrscr;
    writeln('Masukkan berapa panjang deretnya !');
    write('N = '); readln(n);

    x := 0;
    y := 1;
    sum := x + y;

    writeln('');
    write('Sequence = ', x, ' ', y, ' ');

    for i := 3 to n do
    begin
        z := x + y;
        write(z, ' ');
        sum := sum + z;
        x := y;
        y := z;
    end;
    
    writeln('');
    writeln('Total = ', sum);
    readln;
end.