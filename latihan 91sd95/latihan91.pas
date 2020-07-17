Program pas91;
Uses Crt,graph;
Begin
    Repeat
    Sound(1000); {frekuensi pertama}
    Delay(200); {tunda sebentar}
    Sound(400); {frekuensi kedua}
    Delay(200); {tunda sebentar}
    Until Keypressed;
    NoSound; {menghentikan suara}
End.