program latihan33;
uses crt, sysutils;

var
    bilangan, jumlah_input, hasil_penjumlahan : integer;

begin
    clrscr;
    writeln('MENGHITUNG JUMLAH DAN RATA-RATA SEJUMLAH DATA NILAI');
    writeln('CACAH DATA TIDAK DIKETAHUI DENGAN PASTI');
    writeln('PEMBACAAN DATA DIHENTIKAN DENGAN DATA SENTINEL');
    writeln();
    writeln('ISIKAN BILANGAN NEGATIF UNTUK SELESAI');
    writeln();

    jumlah_input := 0;
    hasil_penjumlahan := 0;

    REPEAT
        
        write('MASUKKAN DATA NILAINYA = ');readln(bilangan);
        jumlah_input := jumlah_input + 1;
        hasil_penjumlahan := hasil_penjumlahan + bilangan;
        
    UNTIL bilangan < 0;

    writeln();
    writeln();
    writeln('JUMLAH DATA = ', hasil_penjumlahan);
    writeln('RATA RATA = ', (hasil_penjumlahan/jumlah_input):0:2);
    readln();

end.