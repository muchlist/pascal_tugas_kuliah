Program latihan21;

uses crt;

var
    kiwi_kg, mangga_kg, alpukat_kg, apel_kg : integer;
    harga_kiwi, harga_mangga, harga_alpukat, harga_apel : real;
    total_harga_kiwi, total_harga_mangga, total_harga_alpukat, total_harga_apel : real;
    hadiah: string;
    disc, harga_disc, bayar : real;

begin
    clrscr;

    harga_mangga := 10000;
    harga_apel := 15000;
    harga_kiwi := 20000;
    harga_alpukat := 20000;

    writeln('Program Jual Buah Buahan');
    writeln(' ******************* ');
    writeln('Masukkan pembelian buah dalam KG');
    writeln;
    write('Mangga  (kg) (Rp. ', harga_mangga:0:0, ' ) =   '); readln(mangga_kg);
    write('Apel    (kg) (Rp. ', harga_apel:0:0, ' ) =   '); readln(apel_kg);
    write('Kiwi    (kg) (Rp. ', harga_kiwi:0:0, ' ) =   '); readln(kiwi_kg);
    write('Alpukat (kg) (Rp. ', harga_alpukat:0:0, ' ) =   '); readln(alpukat_kg);
    
    //MANGGA
    disc := 0.0;
    harga_disc := 0.0;
    case mangga_kg of
        5..19 : disc := 2.5;
        20..1000 : disc := 2.5 + 7;
    end;
    total_harga_mangga := mangga_kg * harga_mangga;
    if disc <> 0.0 then
        harga_disc := total_harga_mangga * disc / 100;
    
    writeln;
    writeln('harga total mangga       = Rp.', total_harga_mangga:0:0);
    writeln('diskon mangga            = Rp.', harga_disc:0:0);
    writeln('total bayar mangga       = Rp.', total_harga_mangga - harga_disc:0:0);
    writeln;

    bayar := total_harga_mangga - harga_disc;
    
    //KIWI
    disc := 0.0;
    harga_disc := 0.0;
    case kiwi_kg of
        5..19 : disc := 5;
        20..1000 : disc := 5 + 7;
    end;
    total_harga_kiwi := kiwi_kg * harga_kiwi;
    if disc <> 0.0 then
        harga_disc := total_harga_kiwi * disc / 100;

    writeln;
    writeln('harga total kiwi         = Rp.', total_harga_kiwi:0:0);
    writeln('diskon kiwi              = Rp.', harga_disc:0:0);
    writeln('total bayar kiwi         = Rp.', (total_harga_kiwi - harga_disc):0:0);
    writeln;

    bayar := bayar + (total_harga_kiwi - harga_disc);


    //ALPUKAT
    disc := 0.0;
    harga_disc := 0.0;
    case alpukat_kg of
        5..9 : disc := 7;
        10..1000 : 
            begin 
                disc := 7;
                hadiah := hadiah + 'payung';
            end;
    end;
    total_harga_alpukat := alpukat_kg * harga_alpukat;
    if disc <> 0.0 then
        harga_disc := total_harga_alpukat * disc / 100;

    writeln;
    writeln('harga total alpukat      = Rp.', total_harga_alpukat:0:0);
    writeln('diskon alpukat           = Rp.', harga_disc:0:0);
    writeln('total bayar alpukat      = Rp.', (total_harga_alpukat - harga_disc):0:0);
    writeln;

    bayar := bayar + (total_harga_alpukat - harga_disc);

    //APEL
    disc := 0.0;
    harga_disc := 0.0;
    case apel_kg of
        5..14 : disc := 7;
        15..1000 : 
            begin
                disc := 7;
                hadiah := hadiah + ', tas';
            end;
    end;
    total_harga_apel := apel_kg * harga_apel;
    if disc <> 0.0 then
        harga_disc := total_harga_apel * disc / 100;

    writeln;
    writeln('harga total apel         = Rp.', total_harga_apel:0:0);
    writeln('diskon apel              = Rp.', harga_disc:0:0);
    writeln('total bayar apel         = Rp.', (total_harga_apel - harga_disc):0:0);
    writeln;

    bayar := bayar + (total_harga_apel - harga_disc);

    writeln('-------------------------------------');
    writeln;
    writeln('Total Bayar              = Rp. ',bayar:0:0);
    writeln('Mendapatkan hadiah       = ',hadiah);
    readln;
end.