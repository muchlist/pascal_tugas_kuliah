Program pas31;

uses crt;
type larik = array[1..100] of real;

var vektor : larik;
    n,i : integer;
    m,rerata,jum : real;

procedure baca;
begin
    clrscr;
    write('masukkan banyak data = ');
    readln(n);
    writeln('masukkan datanya =');
    
    for I := 1 to n do
        begin
            read(vektor[I]);
            gotoxy(whereX+(I mod 8) * 8,whereY-1);
            if I mod 8 = 0 then
            writeln;
        end;
end;

procedure cetak(X:larik;p:integer);
var i : integer;
begin
    writeln;
    for I := 1 to P do
        begin
            write(X[I]:6:2);
            if I mod 8 = 0 then
            writeln;
        end;
    writeln;
end;

procedure urut (var X : larik; P:integer);
var i,j,lokasi : integer;
    bantu : real;
begin
    for i := 1 to p-1 do
        begin
            lokasi := i;
        
            for j := i+1 to p do
                if x[lokasi] > x[j] then
            
            lokasi := j;
            bantu := x[i];
            x[i] := x[lokasi];
            x[lokasi] := bantu;
        end;
end;

procedure medu(var x : larik; n :integer);
begin
    if (n mod 2 = 0) then
        m := (x[n div 2] + x[(n div 2) +1])/2
    else
        m := x[(n+1)div 2];
end;

procedure rata (x:larik; n :integer);
var i : integer;
begin
    jum := 0.0;
    for i := 1 to n do
        jum := jum + x[i];
    rerata := jum / n;
end;

//Main
begin
    clrscr;
    baca; clrscr;
    writeln('data sebelum diurutkan =');
    cetak(vektor,n);
    writeln;
    urut(vektor,n);
    writeln('data urut =');
    cetak(vektor,n);
    rata(vektor,n);
    writeln;
    writeln('banyaknya data = ',n);
    writeln('total data = ',jum:6:2);
    writeln('nilai rata-rata = ',rerata:6:2);
    medu(vektor,n);
    writeln('nilai median = ',m:6:2);
    readln; readln;
end.