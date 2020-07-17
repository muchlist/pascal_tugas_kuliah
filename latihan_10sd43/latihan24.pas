program latihan24;
uses crt;
var
	a, b, c : real;
	i, n : integer;

	
begin
	clrscr;
	writeln('Program Nilai kurs');
	writeln('**************');
	writeln;
	write('Masukkan nilai kurs 1$ = Rp.');
	readln(a);
	
	b := 0;
	n := 5;
	for i := 1 to n do
	begin
		b := b + a;
		writeln('Kurs ', i, '$ = Rp. ', b:8:2);
	end;
	
	c := b / n;
	writeln('Rata-rata 1$= Rp. ', c:8:2);
	writeln;
	if c > 15000 then
	writeln('Jual dollar')
	else
	if c < 13000 then
	writeln('Simpan Dollar');
	readln;
	
end.