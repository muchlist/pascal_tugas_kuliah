program latihan27;
uses crt;
var
	baris, kolom, bintang: integer;

	
begin
	
	clrscr;
	writeln('Program meampilkan bintang');
	writeln('**************************');
	writeln;
	write('Masukkan banyaknya bintang : ');
	readln(bintang);
	
	
	for baris := 1 to bintang do
	begin
		for kolom := 1 to bintang do
			begin
				write('*');
			end;
			writeln('')
	end;
	readln;

end.