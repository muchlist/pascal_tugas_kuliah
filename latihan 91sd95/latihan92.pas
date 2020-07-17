Program pas92;
Uses Crt, Graph;
Const
    Escape=#27;
Var
    Tombol : Char;
    Frek : Word;
    Bunyi : Boolean;

Begin
    ClrScr;
    GotoXY(30,07);Write(' SIMULASI PIANO ');
    GotoXY(30,09);Write('===================');
    GotoXY(30,10);Write('| W E T Y U |');
    GotoXY(30,11);Write('| A S F G H J K |');
    GotoXY(30,12);Write('===================');
    
    Repeat
    Tombol := ReadKey;
    Tombol := UpCase(Tombol);
    Bunyi := True;
    
    Case Tombol Of
        'A' : Frek := 131;
        'W' : Frek := 191;
        'S' : Frek := 147;
        'E' : Frek := 156;
        'F' : Frek := 175;
        'T' : Frek := 185;
        'G' : Frek := 196;
        'Y' : Frek := 208;
        'H' : Frek := 220;
        'U' : Frek := 233;
        'J' : Frek := 247;
        'K' : Frek := 262;
    Else
        Bunyi := False
    End;

    If Bunyi Then
        Begin
            Sound(frek);
            Delay(200);
            NoSound;
        End;
    Until Tombol = Escape;
End.
