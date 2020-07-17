Program pas61;

Type Recbarang = RECORD
    Nama_B : string[10];
    Jumlah : Integer;
    Harga_b : LongInt;
End;

Var
Barang : Recbarang;

Begin
    {Memasukan data ke dalam record barang}
    Barang.Nama_b := 'Baju koko';
    Barang.Jumlah := 10;
    Barang.Harga_b := 200000;
    {Menampilkan isi field record}
    Writeln('Nama Barang : ',Barang.Nama_b);
    Writeln('Jumlah Barang : ',Barang.Jumlah);
    Writeln('Harga Barang : ',Barang.Harga_b);
End.
