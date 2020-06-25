program latihan20;
uses crt;
var
        pilihan : integer;
        nilai_satu, nilai_dua, hasil : real;

begin
        clrscr;
        writeln('Program Kalkulator Sederhana');
        writeln('###########################################');
        writeln;
        writeln('Pilih operasi :');
        writeln('      1. Penjumlahan');
        writeln('      2. Pengurangan');
        writeln('      3. Perkalian');
        writeln('      4. Pembagian');
        writeln;
        write('Masukkan pilihan          = '); Readln(pilihan);
        writeln;

        write('Masukkan bilangan pertama = '); Readln(nilai_satu);
        write('Masukkan bilangan kedua   = '); Readln(nilai_dua);


        case pilihan of
            1: 
                begin
                hasil := nilai_satu + nilai_dua;
                writeln('Hasil penjumlahan adalah  = ', hasil:0:0);
                end;
            2:
                begin
                hasil := nilai_satu - nilai_dua;
                writeln('Hasil pengurangan adalah  = ', hasil:0:0);
                end;
            3:
                begin
                hasil := nilai_satu * nilai_dua;
                writeln('Hasil perkalian adalah    = ', hasil:0:0);
                end;
            4:
                begin
                hasil := nilai_satu / nilai_dua;
                writeln('Hasil pembagian adalah    = ', hasil:0:2);
                end;
        end;

        readln;
end.
