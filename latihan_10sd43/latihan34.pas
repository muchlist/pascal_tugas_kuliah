program latihan34;
uses crt;

var
    a, b : real;

const
    c = 1.609344;

begin
    clrscr;
    writeln('Program Konversi Kilometer ==> Mil');
    writeln;
    a := 0;

    while a < 20 do
        begin
        a := a + 1;
        b := c * a;
        writeln(a:5:2,' Km = ',b:5:4,' Mil');
        end;
        
    readln;
end.