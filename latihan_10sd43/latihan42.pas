program latihan42;
uses crt;
var
    nama : array[1..20] of string;
    tugas, uts, uas : array[1..20] of integer;
    rata : array[1..20] of real;
    a, jd : byte;

begin
    clrscr;
    writeln(' Program Nilai Mahasiswa ');
    writeln(' #################### ');
    writeln;
    write('Masukkan Jumlah Data Mahasiswa : ');
    readln(jd);
    writeln;

    for a := 1 to jd do
        begin
            writeln('ENTRY NILAI UJIAN MAHASISWA ');
            writeln('---------------------------');
            write('Masukkan Nama : '); readln(nama[a]);
            write('Masukkan Nilai Tugas : '); readln(tugas[a]);
            write('Masukkan Nilai UTS : '); readln(uts[a]);
            write('Masukkan Nilai UAS : '); readln (uas[a]);
            writeln;
            rata[a] := (0.30 * tugas[a]) + (0.30 * uts[a]) + (0.40 * uas[a]);
        end;

    clrscr;
    writeln('LAPORAN UJIAN MAHASISWA');
    writeln('-----------------------');
    writeln('No':2,'Nama':10,'Tugas':10,'UTS':10,'UAS':10,'Nilai Akhi r':15);

    for a := 1 to jd do
        writeln(a:2,nama[a]:10,tugas[a]:10,uts[a]:10,uas[a]:10,rata[a]:15:2);

    readln;
end.