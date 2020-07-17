Program pas12;

Uses Crt;
Const N = 3;
Var Nim : Array[1..N] Of integer;
    Nama : Array[1..N] Of String[20];
    IP : Array[1..N] Of real;
    I : Integer;

Begin
    Clrscr;
    //Baca Data
    Writeln('Masukkan', N ,'buah data');
    
    For I := 1 to N Do
        Begin
            Write('No.Mhs : ');Readln(NIM[I]);
            Write('Nama Mhs : ');Readln(Nama[I]);
            Write('IP Mhs : ');Readln(IP[I]);
        End;
    
    //Cetak Hasil
    Writeln('Daftar Nilai');
    Writeln('No NIM          NAMA         IP');
    
    For I := 1 to N Do
        Writeln(I:2, Nim[I]:10, Nama[I]:15, IP[I]:6:2);
    Readln
End.
