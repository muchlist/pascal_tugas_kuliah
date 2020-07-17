program latihan38;
Uses crt;

Var
    X, Y, Z : integer;

Procedure Operasi_hitung(A, B, C :integer);
    Begin
        C := A + B;
        Writeln;
        Writeln('Hasil Penjumlahan adalah : ',C);
        C := A * B;
        writeln('Hasil Perkalian adalah : ',C);
        C := A - B;
        writeln('Hasil Pengurangan adalah : ',C);
        readln;
    end;

begin {Program Utama}
    clrscr;
    Z := 0;
    writeln('Program Hitung Menggunakan Procedure');
    writeln(' +++++++++++++++++++++++++++++ ');
    writeln;
    Write('Input nilai X : '); readln(X);
    Write('Input nilai Y : '); readln(Y);
    Operasi_Hitung(X,Y,Z);
    readln;
End.