program latihan11;
uses crt;
var
        a, b, c : integer;

begin
        clrscr;
        writeln('Program menentukan bilangan terbesar');
        writeln('###########################################');
        writeln;
        write('Masukkan bilangan ke 1  = '); Readln(a);
        write('Masukkan bilangan ke 2  = '); Readln(b);
        write('Masukkan bilangan ke 3  = '); Readln(c);

                if (a > b) and (a > c) then writeln('bilangan ke 1 (', a, ') paling besar')
                else
                if (b > a) and (b > c) then writeln('bilangan ke 2 (', b, ') paling besar')
                else
                if (c > a) and (c > b) then writeln('bilangan ke 3 (', c, ') paling besar')
                else writeln('ada dua atau lebih masukan memiliki nilai terbesar yang sama');

        readln;
end.
