Program pas51;

var
    i : integer;

procedure ulang;
begin
    writeln(i,'. Tulisan ini akan tercetak 10 kali');
    if i < 10 then
        begin
            i := i + 1;
            ulang;
        end;
end;

begin
    i := 1;
    ulang;
    readln
end.
