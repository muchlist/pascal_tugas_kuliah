program pas94;
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
    FrekDasar := 3;
    FrekMod:= 10;
    Amp := GetmaxX div 4;
    SumbuX := GetMaxY div 2;
    
    For Sudut := 1 To GetMaxX do
        Begin
            Tinggi := Amp * (Sin(FrekDasar * PI * Sudut/180)) *
            (Sin(FrekDasar * PI * Sudut/180));
            PutPixel(Sudut, SumbuX - Round(Tinggi), GetMaxColor);
        End;
    Readln;
    Closegraph;
End.