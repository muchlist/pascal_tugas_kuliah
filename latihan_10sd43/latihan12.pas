program latihan12;
uses crt;
var
        bilangan : integer;

begin
        clrscr;
        writeln('Program menentukan ganjil atau genap');
        writeln('###########################################');
        writeln;
        write('Masukkan bilangan = '); Readln(bilangan);

                if (bilangan mod 2) = 0 then writeln ('bilangan genap') // mod itu modifier
                else writeln('bilangan ganjil');

        readln;
end.
