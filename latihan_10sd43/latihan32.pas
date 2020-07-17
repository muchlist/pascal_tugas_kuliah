program latihan32;
uses crt;

Var
    angka : integer;

Begin
    clrscr;
    angka := 0;
    
    Repeat
        angka := angka + 1;
        Writeln(angka);
    Until angka = 5;
    
    readln
End.