program latihan43;
uses crt;

type
        mahasiswa = record
        nim : string[10];
        nama : string[30];
        alamat : string[30];
        jurusan : string[30];
end;

var
        record_mahasiswa : array[1..50] of mahasiswa;
        byk : byte;
        i, j : integer;

begin
        clrscr;
        write('Masukkan Jumlah Mahasiswa : '); readln(byk);

        for i := 1 to byk do
        begin
                write('NIM                     : ');readln(record_mahasiswa[i].nim);
                write('Nama                    : ');readln(record_mahasiswa[i].nama);
                write('Jurusan                 : ');readln(record_mahasiswa[i].jurusan);
                write('Alamat                  : ');readln(record_mahasiswa[i].alamat);
                
                writeln;
        end;
        writeln;

        writeln('===========================');
        writeln('  Data yang telah direkam  ');
        writeln('===========================');
        
        for j:= 1 to byk do
        begin
                writeln('NIM          :   ', record_mahasiswa[j].nim);
                writeln('Nama         :   ', record_mahasiswa[j].nama);
                writeln('Alamat       :   ', record_mahasiswa[j].alamat);
                writeln('Jurusan      :   ', record_mahasiswa[j].jurusan);
                writeln;
        end;
        readln;
end.

