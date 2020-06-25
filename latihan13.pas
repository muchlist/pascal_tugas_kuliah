program latihan13;
uses crt;
var
        lebar, panjang, jari, pilihan, a, t : integer;
        luas: real;

begin
        clrscr;
        writeln('Program Menghitung Luas');
        writeln('###########################################');
        writeln;
        writeln('Pilih Menu :');
        writeln('      1. Luas Lingkaran');
        writeln('      2. Luas Persegi');
        writeln('      3. Luas Segitiga');
        writeln;
        write('Masukkan pilihan = '); Readln(pilihan);
        writeln;

                if pilihan = 1 then
                        begin
                        writeln('Menghitung Luas Lingkaran');
                        writeln('=========================');
                        writeln;
                        write('Masukkan jari-jari = '); Readln(jari);
                                luas := 3.14*jari*jari;
                        writeln('Luas adalah = ', luas:0:2);
                        end
                else
                if pilihan = 2 then
                        begin
                        writeln('Menghitung Luas Persegi');
                        writeln('=========================');
                        writeln;
                        write('Masukkan Panjang = '); Readln(panjang);
                        write('Masukkan Lebar = '); Readln(lebar);
                                luas := panjang * lebar;
                        writeln('Luas adalah = ', luas:0:2);
                        end
                else
                if pilihan = 3 then
                        begin
                        writeln('Menghitung Luas Segitiga');
                        writeln('=========================');
                        writeln;
                        write('Masukkan Alas = '); Readln(a);
                        write('Masukkan Tinggi = '); Readln(t);
                                luas := 0.5 * a * t;
                        writeln('Luas adalah = ', luas:0:2);
                        end
                else writeln('Pilihan menu tidak ada');

        readln;
end.
