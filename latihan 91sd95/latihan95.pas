program pas95;
uses graph;
var
    DriverGrafis,ModeGrafis : integer;
    FrekDasar,FrekMod,Amp,Sudut,SumbuX : integer;
    Tinggi : real;
Begin
    DriverGrafis := Detect;
    InitGraph(DriverGrafis,ModeGrafis,'c:\tp\bgi\');
    
    If GraphResult <>GrOk then
        Begin
            Writeln('Mode grafik tidak berhasil');
            Halt(1); {Berhenti}
        End;
        
    SetColor(4);
    Line(320, 100, 200, 200);
    Line(320, 100, 440, 200);
    SetColor(7);
    Line(250, 300, 250, 160);
    Line(390, 300, 390, 160);
    SetColor(6);
    Line(150, 300, 490, 300);
    Readln;
    Closegraph;
End.
