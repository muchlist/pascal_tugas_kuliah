Program pas11;
uses crt;

const max_test = 4;
type data_nilai = array[1..max_test] of integer;
var i,jum : integer;
    rata : real;
    nilai_test : data_nilai;

begin
    clrscr;
    //memasukkan data
    for i := 1 to max_test do
        begin
            write ('masukkan nilai test ke ',i,' = ');
            readln (nilai_test[i]);
        end;
    
    //menhitung total nilai dan rata-rata
    jum := 0;
    for i := 1 to max_test do
        begin
            jum := jum + nilai_test[i];
        end;
    rata := jum / max_test;

    //mencetak
    writeln ('Total nilai = ',jum);
    writeln ('Rata-rata nilai = ',rata:5:2);
    readln;
end.
