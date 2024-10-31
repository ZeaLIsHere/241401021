program cemanalahini;
uses crt;

var 
    nama, hari, produk1, produk2, produk3: string;
    harga1, harga2, harga3, hargatotal, diskon, bayar, diskontotal: real;
    poin :integer;
    

begin
    clrscr;

    write('Nama Anggota: '); readln(nama);
    write('Hari: '); readln(hari);
    writeln;
    write('Produk(1): '); readln(produk1);
    write('Harga: '); readln(harga1);
    writeln;
    write('Produk(2): '); readln(produk2);
    write('Harga: '); readln(harga2);
    writeln;
    write('Produk(3): '); readln(produk3);
    write('Harga: '); readln(harga3);

    hargatotal := harga1 + harga2 + harga3;
    diskon := 0;

    if hari = 'Senin' then
        begin
            diskon := 10 + 10;
            diskontotal := diskon / 100;
        end
    
    else if hari = 'Selasa' then
        begin 
            diskon := 10 + 5;
            diskontotal := diskon / 100;
        end
    
    else if hari = 'Rabu' then
        begin
            diskon := 10 + 30;
            diskontotal := diskon / 100;
        end
    
    else if hari = 'Kamis' then
        begin
            diskon := 10 + 8;
            diskontotal := diskon / 100;
        end;

    bayar := hargatotal - (hargatotal * diskontotal);
    poin := trunc(hargatotal) div 50000;

    if poin >= 50 then
    begin
        diskon := diskon + 20;
    end;

    writeln;
    writeln('Total: Rp', hargatotal:0:0);
    writeln('Diskon: ', diskon:0:0,'%');
    writeln('Pembayaran: Rp', bayar:0:0);
    writeln('Poin: ', poin);

    readln;
end.
