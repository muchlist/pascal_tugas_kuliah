program latihan26;
uses crt;
var
	i : integer;
	kata, balik: string;

	
begin
	
	clrscr;
	writeln('Program membalik kata dari belakang');
	writeln('***********************************');
	writeln;
	write('Tulis kata yang akan dibalik : ');
	readln(kata);
	
	balik := '';
	
	for i := length(kata) downto 1 do
	balik := balik + kata[i];
	
	writeln('Hasilnya :', balik);
	readln;
	
end.