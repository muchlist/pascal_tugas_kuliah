program latihan10;
uses crt;
var
        x : integer;

begin
        clrscr;
        writeln('Program Positif atau Negatif');
        writeln('###########################################');
        writeln;
        write('Masukkan bilangan = '); Readln(x);

                if x > 0 then writeln (x, ' adalah bilangan positif')
                else writeln (x, 'adalah bilangan negatif');

        readln;
end.
