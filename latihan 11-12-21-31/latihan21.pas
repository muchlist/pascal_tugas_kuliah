Program pas21;

uses crt;

type data_nilai = array[1..100, 1..3] of integer;
var max_siswa,i,j,jum : integer;
    rata : real;
    nilai_test : data_nilai;

begin
    clrscr;
    //memasukkan data
    write ('masukkan jumlah siswa = ');
    readln (max_siswa);
    
    for i := 1 to max_siswa do
        begin
            writeln ('data Mahasiswa ke ',i,' = ');
            
            for j := 1 to 3 do
                begin
                    write ('masukkan nilai test ke ',i,' = ');
                    readln (nilai_test[i,j]);
                end;
        end;

    //menhitung total nilai dan rata-rata
    clrscr;
    writeln ('DAFTAR NILAI');
    write ('No ');
    
    for i := 1 to 3 do
        write ('nilai ke-',i,' ');
    
    writeln ('rata-rata');
    writeln;
    
    for i := 1 to max_siswa do
        begin
            jum := 0;
            
            for j := 1 to 3 do
                jum := jum + nilai_test[i,j];
            
            rata:= jum / 3;
            write (i:2);
            
            for j := 1 to 3 do
                write (' ',nilai_test[i,j],'':7);
            
            writeln(rata:5:2);
        end;
    readln;
end.
