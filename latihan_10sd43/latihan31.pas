program latihan31;
uses crt;

Var
angka : integer;

Begin
    clrscr;
    angka := 0;
    While angka < 5 do
        Begin
            Writeln(angka:8);
            angka := angka + 1;
        end;
    readln;
End.