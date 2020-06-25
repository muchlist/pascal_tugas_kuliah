program latihan19;
uses crt;
var
        a, t, panjang, lebar, jari, luas : Real;
        pilih: Integer;

begin
        clrscr;
        writeln('Program Menghitung Luas');
        writeln('***********************');
        writeln;
        writeln('Pilih Menu');
        writeln('=================> 1. Luas Lingkaran');
        writeln('                   2. Luas Persegi');
        writeln('                   3. Luas Segitiga');
        writeln;
        write('Masukkan Pilihan = '); readln(pilih);
        writeln;

        case pilih of
        1 :     Begin
                writeln('Program Lingkaran');
                writeln('=================');
                writeln;
                write('Masukkan jari-jari = ');readln(jari);
                luas := 3.14 * jari * jari;
                writeln('Luas adalah      = ', luas:0:2);
                End;

        2:      Begin
                writeln('Program Persegi Panjang');
                writeln('=======================');
                writeln;
                write('Masukkan Panjang = '); readln(panjang);
                write('Masukkan Lebar   = '); readln(lebar);
                luas := panjang * lebar;
                writeln('Luas addalah   = ', luas:0:0);
                End;

        3:      Begin
                writeln('Program Segitiga');
                writeln('================');
                writeln;
                write('Masukkan Alas   = '); readln(a);
                write('Masukkan Tinggi = '); readln(t);
                luas := 0.5 * a * t;
                writeln('Luas Adalah   = ',luas:0:2);
                End;
        End;

Readln;
End.







