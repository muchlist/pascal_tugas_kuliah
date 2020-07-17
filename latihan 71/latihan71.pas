program pas71;

uses crt, cekpas;
var
    Kata_sandi : string;

begin
    Clrscr;

    repeat
        Write('Masukkan Password Anda !! : ');
        Readln(Kata_sandi);
    until CekSandi (Kata_sandi, 'praktikan');
    
    Writeln;
    Write('Password Anda Benar !!');
    Readln;
end.
