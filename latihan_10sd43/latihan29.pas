Program Latihan29;
uses crt;
var
    bensin, pertalite, pertamax : longint;
    liter, i : integer;
begin
    clrscr;
    writeln(' Program Hitung Harga Bahan Bakar');
    writeln;
    write('Masukkan Jumlah Liter = ');
    readln(liter);

    bensin := 0;
    pertalite := 0;
    pertamax := 0;
    for i := 1 to liter do
    begin
        bensin := bensin + 4500;
        pertalite := pertalite + 5000;
        pertamax := pertamax + 7500;
    end;

    writeln(i,' Liter');
    writeln('Bensin = Rp. ',bensin);
    writeln('Pertalite = Rp.',pertalite);
    writeln('Pertamax = Rp. ',pertamax);
    readln;
end.