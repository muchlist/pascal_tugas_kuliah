program latihan15;
uses crt, sysutils;

var
        masa_kerja, bonus, gaji_pokok, gaji_bersih, uang_transport, tunjangan : real;
        pegawai_tetap_str ,berkeluarga_str: string;

begin
        clrscr;
        writeln('Program Menghitung Gaji Karyawan');
        writeln('################################');
        writeln;
        write('Masukkan gaji pokok                  = Rp. '); Readln(gaji_pokok);
        write('Masukkan masa kerja                  = '); Readln(masa_kerja);
        write('Apakah pegawai tetap (ya, tidak)     = '); Readln(pegawai_tetap_str);
        write('Apakah sudah berkeluarga (ya, tidak) = '); Readln(berkeluarga_str);

        bonus := 0;
        uang_transport := 0;
        tunjangan := 0;

        if masa_kerja > 5 then
            bonus := gaji_pokok * 15 / 100;
        if UpperCase(pegawai_tetap_str) = 'YA' then
            uang_transport := 50000;
        if UpperCase(berkeluarga_str) = 'YA' then
            tunjangan := gaji_pokok * 10 / 100;
        
        gaji_bersih := gaji_pokok + bonus + tunjangan + uang_transport;


        writeln('###############################');
        writeln('Bonus                            = Rp. ', bonus:0:0);
        writeln('Uang Transport                   = Rp. ', uang_transport:0:0);
        writeln('Tunjangan                        = Rp. ', tunjangan:0:0);
        writeln('-------------------------------');
        writeln('Gaji Bersih                      = Rp. ', gaji_bersih:0:0);

        readln;
end.
