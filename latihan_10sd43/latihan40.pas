Program latihan40;
Uses crt;

Var
    A, Hasil : real;
N : integer;

Procedure A_Pangkat_N_Positif;
    Var
        I : integer;
    Begin
    If (N = 0) then hasil := 1
    Else if (N = 1) then hasil := A
    Else
        Begin
            Hasil := 1;
            For I := 1 to N do
            Hasil := hasil * A;
        End;
    End;

Procedure Pangkat_Positif;
    Begin
        Write('A pangkat N = ');
        A_pangkat_N_Positif;
        Writeln(hasil:0:2);
    End;

Procedure Pangkat_Negatif;
    Begin
        Write('A pangkat N = ');
        A_pangkat_N_Positif;
        Writeln(1/hasil:0:2);
    End;

Procedure masukan_Data;
    Begin
        Clrscr;
        Writeln('Menghitung A pangkat N dengan A riil & N integer');
        Writeln('A dan N boleh bilangan negatif');
        Writeln(' ++++++++++++++++++++++++++++ ');
        Writeln;
        Write('masukan Nilai A : ');
        readln(A);
        Write('masukan nilai N : ');
        readln(N);
    End;

Begin {Program Utama}
    clrscr;
    Masukan_data;
    If (n > 0) or (n < 0) then Pangkat_Positif
    Else Pangkat_Negatif;
    Readln;
End.