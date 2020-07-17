program latihan41;
uses crt;

var
    bil1, bil2 : integer;
    lagi : char;

function tambah(a,b:integer) : integer;
    begin
        tambah := a + b;
    end;

function kali(a,b:real) : real;
    begin
        kali := a * b;
    end;

begin
    repeat
        clrscr;
        writeln('Program Hitung Menggunakan Function');
        writeln(' ++++++++++++++++++++++++++++ ');
        writeln;
        write('Masukan bilangan pertama = '); readln(bil1);
        write('Masukan bilangan kedua = '); readln(bil2);
        writeln(bil1,' + ',bil2,' = ',tambah(bil1,bil2));
        writeln(bil1,' * ',bil2,' = ',kali(bil1,bil2):0:2);
        writeln;
        write('tekan [Y] Ulang program / [N] Keluar : '); readln(lagi);
    until UPCASE(lagi) <> 'Y';
end.