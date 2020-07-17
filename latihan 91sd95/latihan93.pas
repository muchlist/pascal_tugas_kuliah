program pas93;
uses graph;
var
    DriverGrafis, ModeGrafis : integer;
Begin
    DriverGrafis := Detect;
    InitGraph(DriverGrafis,ModeGrafis,'c:\tp\bgi\');

    If GraphResult <>GrOk then
        Begin
            Writeln('Mode grafik tidak berhasil');
            Halt(1); //berhenti
        End;

    Circle(GetMaxX div 2, GetMaxY div 2, GetMaxY div 4);
    Readln;
    Closegraph;
End.
