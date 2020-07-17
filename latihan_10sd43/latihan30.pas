Program Latihan30;
uses crt;

var
    i : integer;
begin
    clrscr;
    writeln('Menampilkan angka ganjil dari 1 s.d 100 :');
    for i := 1 to 100 do
    if i mod 2 = 1 then 
        write(i, '  ');
    readln;
end.