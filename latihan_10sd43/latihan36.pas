program latihan33;
uses crt, sysutils;

var
    bil1, bil2, hasil, perulangan_kata : integer;
    ulang : char;
    keterangan: string;

begin

    REPEAT
        clrscr;
        writeln('Program Perhitungan Menggunakan Perulangan');
        writeln(' +++++++++++++++++++++++++++++++++++ + ');
        writeln;
        write('Ketik Bilangan Pertama = ');
        readln(bil1);
        write('Ketik Bilangan Kedua = ');
        readln(bil2);
        hasil := 0;
        perulangan_kata := 0;
        keterangan := intToStr(bil1);
        
        WHILE bil1 >= bil2 DO
            begin
            bil1 := bil1 - bil2;
            hasil := hasil + 1;
            end;
            
        perulangan_kata := hasil;

        REPEAT
            perulangan_kata := perulangan_kata - 1;
            keterangan := keterangan + ' - ' + intToStr(bil2);
        UNTIL perulangan_kata = 0;

        write(keterangan, ' = ',hasil, ' Kali pengurangannya');
        writeln;
        write('Mau ulang Program Tekan [Y] / Keluar [T] = ');
        readln(ulang);
    UNTIL upcase (ulang) <> 'Y';

end.