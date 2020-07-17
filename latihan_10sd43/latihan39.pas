Program latihan39;
Uses crt;

Type
    huruf = string[100];

Var
    N :integer;
    Nama : Huruf;

Procedure Hitung_Panjang(var karakter : Huruf; var panjang : integer);
    Begin
        Panjang := length(karakter);
    End;

Begin {Program Utama}
    Clrscr;
    writeln('Program Hitung Huruf Nama');
    writeln(' +++++++++++++++++++++++ ');
    writeln;
    write('Siapakah Nama Lengkap Anda ? : '); readln(nama);
    
    Hitung_Panjang(Nama,N);

    writeln;
    writeln('Panjang nama anda adalah : ',N,' Karakter');
    writeln('Catatan : ');
    writeln('Spasi dalam nama dianggap Satu Karakter');
    Readln;
End.