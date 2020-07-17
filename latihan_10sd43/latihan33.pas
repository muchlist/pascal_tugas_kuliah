program latihan33;
uses crt;

var
    bil1, bil2, hasil : integer;
    ulang : char;

begin

    REPEAT
        clrscr;
        writeln('Program Perhitungan Menggunakan PErulangan');
        writeln(' +++++++++++++++++++++++++++++++++++ + ');
        writeln;
        write('Ketik Bilangan Pertama = ');
        readln(bil1);
        write('Ketik Bilangan Kedua = ');
        readln(bil2);
        hasil := 0;
        
        WHILE bil1 >= bil2 DO
            begin
            bil1 := bil1 - bil2;
            hasil := hasil + 1;
            end;
            
        write('hasil perhitungan = ',hasil);
        writeln;
        write('Mau ulang Program Tekan [Y] / Keluar [T] = ');
        readln(ulang);
    UNTIL upcase (ulang) <> 'Y';

end.