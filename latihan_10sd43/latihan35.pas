program latihan35;
uses crt;

var
    a : integer;
    b : char;

begin
    clrscr;
    randomize;
    b := 'N';
    writeln(' PROGRAM ANGKA ACAK ');
    writeln(' ++++++++++++++++++++ ');
    writeln;

    while b <> 'Y' do
        begin
        a := random (1000);
        write('Angka Sekarang : ',a);
        writeln;
        writeln('Tekan Sembarang Tombol untuk mulai mengac ak');
        writeln('Tekan Y untuk berhenti');
        b := readkey;
        b := upcase(b);
        writeln;
        end;
        
    writeln;
    writeln('PENGACAKAN BERHENTI');
    readln;
end.