program latihan17;
uses crt;

var
    tgl : integer;
begin
    clrscr;
    writeln('Program memeriksa hari dalam bulan Maret 2012');
    writeln(' ******************************************* ');
    writeln;
    write('Masukkan tanggal = ');
    readln(Tgl);
    case tgl of
        5,12,19,26 : writeln ('Hari Senin');
        6,13,20,27 : writeln ('Hari Selasa');
        7,14,21,28 : writeln ('Hari Rabu');
        1,8,15,22,29 : writeln ('Hari Kamis');
        2,9,16,23,30 : writeln ('Hari Jumat');
        3,10,17,24,31 : writeln ('Hari Sabtu');
        4,11,18,25 : writeln ('Hari Minggu');
    else
        Begin
        writeln ('Maaf tidak ada tanggal tersebut');
        end;
    end;
    readln;
end.