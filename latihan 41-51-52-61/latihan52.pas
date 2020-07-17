program pas52;

uses crt;
var x : real;
    n : integer;

Function pkt(x :real; n : integer):real;
var t : real;
m : integer;
Begin
    m:=abs(n);
    if (x<>0) and (n=0) then pkt:=1
    else if n >0 then pkt:=x*pkt(x,n-1)
    else if (n < 0) then pkt := 1/(x*pkt(x,m-1));
end;

begin
    clrscr;
    write('Bilangan yang dipangkatkan : ');readln(x);
    write('Bilangan pangkat : ');readln(n);
    writeln(x:5:2,' Pangkat ',n,' = ',pkt(x,n):8:3);
    readln;
end.
