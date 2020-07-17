program pas41;

uses crt;

var pil,i,k,j : integer; 
    tinggi : array[1..100] of real; 
    mahasiswa : array[1..100] of string;

function menu(var pilih:integer):integer;
begin
    clrscr;
    gotoxy(20,5);writeln('**********************************');
    gotoxy(20,6);writeln(' M E N U');
    gotoxy(20,7);writeln('**********************************');
    gotoxy(20,8);writeln;
    gotoxy(20,9);writeln(' 1. Tambah Data');
    gotoxy(20,10);writeln(' 2. Urutkan Data');
    gotoxy(20,11);writeln(' 3. Tampilkan Data');
    gotoxy(20,12);writeln(' 4. Hapus Data');
    gotoxy(20,13);writeln(' 5. Edit Data');
    gotoxy(20,14);writeln(' 6. Statistik');
    gotoxy(20,15);writeln(' 0. Keluar');
    gotoxy(20,16);writeln('**********************************');
    gotoxy(20,18);writeln('**********************************');
    gotoxy(20,17);write('Pilihan = ');readln(pilih);
end;

function tambah:string;
begin
    clrscr;
    writeln('******************');
    writeln(' Tambah Data');
    writeln('******************');
    writeln;
    write('Banyak data yg ditambahkan = ');readln(j);
    
    for i:=1 to j do
        begin
            k:=k+1;
            writeln('-----------');
            writeln(' Data ke-',k);
            writeln('-----------');
            write('Nama Mahasiswa : ');readln(mahasiswa[k]);
            write('Tinggi Badan : ');readln(tinggi[k]);
        end;
end;

function urutkan:integer;
var pil2,x,y : integer;
    temp2: string;
    temp : real;
begin
    clrscr;
    writeln('******************');
    writeln(' Urutkan Data');
    writeln('******************');
    writeln;
    if k=0 then
        begin
            write('Data masih kosong, ENTER untuk ke MENU');
            readln;
        end
    else
        begin
            writeln('Urutan berdasarkan :');
            writeln('1. Nama Mahasiswa');
            writeln('2. Tinggi Badan');
            write('Pilihan = ');readln(pil2);
            
            if (pil2=1) then
                begin
                for i:=1 to k-1 do
                    for j:=i+1 to k do
                        begin
                            if length(mahasiswa[i])>length(mahasiswa[j]) then
                                x:=length(mahasiswa[i])
                            else x:=length(mahasiswa[j]);
                            
                            for y:=1 to x do
                            begin
                                if ((mahasiswa[i,y])>(mahasiswa[j,y])) then
                                    begin
                                        temp:=tinggi[i];
                                        temp2:=mahasiswa[i];
                                        tinggi[i]:=tinggi[j];
                                        mahasiswa[i]:=mahasiswa[j];
                                        tinggi[j]:=temp;
                                        mahasiswa[j]:=temp2;
//                                        y:=x;
                                    end
                                else if ((mahasiswa[i,y])<(mahasiswa[j,y])) then
//                                    y:=x;
                            end;
                        end;
                    write('Data telah terurutkan, ENTER untuk ke MENU');readln;
                end
            else if (pil2=2) then
                begin
                    for i:=1 to k-1 do
                        for j:=i+1 to k do
                        begin
                            if tinggi[i]>tinggi[j] then
                                begin
                                    temp:=tinggi[i];
                                    temp2:=mahasiswa[i];
                                    tinggi[i]:=tinggi[j];
                                    mahasiswa[i]:=mahasiswa[j];
                                    tinggi[j]:=temp;
                                    mahasiswa[j]:=temp2;
                                end;
                        end;
                        write('Data telah terurutkan, ENTER untuk ke MENU');readln;
                end
            else
                begin
                    write('Data GAGAL diurutkan, ENTER untuk ke MENU');readln;
                end;
        end;
end;


function tampilkan(pos: byte; teks : string):string;
begin
    clrscr;
    writeln('******************');
    gotoxy(pos,2);writeln(teks);
    writeln('******************');
    writeln;
    writeln('Terdapat ',k,' data ');
    
    for i:=1 to k do
        begin
            writeln('-----------');
            writeln(' Data ke-',i);
            writeln('-----------');
            writeln('Nama Mahasiswa : ',mahasiswa[i]);
            writeln('Tinggi Badan : ',tinggi[i]:0:2,' cm');
            writeln;
        end;
    
    writeln;
    write('ENTER untuk melanjutkan');readln;
end;

function editkan:string;
var bil : integer;
begin
    tampilkan(5,'Edit Data');
    if (k>0) then
    begin
        write('Data yang di edit urutan ke-');readln(bil);
        if (bil>0) and (bil<=k) then
            begin
                writeln('-----------');
                writeln(' Data ke-',bil);
                writeln('-----------');
                writeln('Nama Mahasiswa : ',mahasiswa[bil]);
                writeln('Tinggi Badan : ',tinggi[bil]:0:2);
                writeln('[::] Edit Data [::]');
                write('Nama Mahasiswa : ');readln(mahasiswa[bil]);
                write('Tinggi Badan : ');readln(tinggi[bil]);
                writeln;
                write('Data telah diubah, ENTER untuk ke MENU');
                readln;
            end
        else
            begin
                writeln;
                write('No Data tidak tepat, ENTER untuk ke MENU');readln;
            end;
    end;
end;



function hapuskan:string;
var bil,i : integer;
begin
    tampilkan(5,'Hapus Data');
    if (k>0) then
        begin
            write('Data yang di hapus urutan ke-');readln(bil);
            if (bil>0) and (bil<=k) then
                begin
                    for i:=bil to k-1 do
                        begin
                        tinggi[i]:=tinggi[i+1];
                        mahasiswa[i]:=mahasiswa[i+1];
                        end;
                    k:=k-1;
                    writeln;
                    write('Data telah dihapus, ENTER untuk ke MENU');
                    readln;
                end
            else
                begin
                writeln;
                write('No Data tidak tepat, ENTER untuk ke MENU');readln;
                end;
        end;
end;


function statistik:string;
var i,j : integer;
    temp,jum : real;
    temp2 : string;
begin
clrscr;
writeln('******************');
writeln(' Statistik Data');
writeln('******************');
if (k>0) then
    begin
    jum:=0;
    writeln;
    writeln('Banyak data yang ada = ',k);
    for i:=1 to k-1 do
        begin
        for j:=i+1 to k do
            begin
                if tinggi[i]>tinggi[j] then
                    begin
                        temp:=tinggi[i];
                        temp2:=mahasiswa[i];
                        tinggi[i]:=tinggi[j];
                        mahasiswa[i]:=mahasiswa[j];
                        tinggi[j]:=temp;
                        mahasiswa[j]:=temp2;
                    end;
            end;
        jum:=jum+tinggi[i];
        end;

    writeln('Rata-rata tinggi mahasiswa = ',((jum+tinggi[k])/k):0:2);
    writeln('Mahasiswa yang memiliki tinggi badan terrendah =',mahasiswa[1],' (',tinggi[1]:0:2,')');
    writeln('Mahasiswa yang memiliki tinggi badan tertinggi =',mahasiswa[k],' (',tinggi[k]:0:2,')'); writeln;
    end
else
    begin
        writeln;
        write('Data masih kosong, ');
    end;
write('ENTER untuk ke MENU');readln;
end;

//program utama
begin
    repeat
        menu(pil);
        case pil of
            0 : exit;
            1 : tambah;
            2 : urutkan;
            3 : tampilkan(3,'Tampilkan Data');
            4 : hapuskan;
            5 : editkan;
            6 : statistik;
        else
            gotoxy(20,19);write('Pilihan salah, ENTER untuk ke MENU');readln;
        end;
    until pil=0;
end.