port = serialport("COM4", 9600);  % COM4 portu ve 9600 baud hızıyla seri port bağlantısı
configureTerminator(port, "LF");  % Satır sonu terminatörü ayarı
fopen(port); % Seri port bağlantısını açma
flush(port);  % Seri porta önceki verileri temizleme
k=60
dataList = zeros(k, 1);  % 60 veri için bir liste oluştur
i = 1;  % Dizi indeksi
while i <= k
    if port.NumBytesAvailable > 0
        distance = readline(port);  % Seri porttan veriyi oku
        distance_num = str2double(distance);  % String veriyi sayısal forma dönüştür
        if ~isnan(distance_num)  % NaN değilse listeye ekle
            dataList(i,1) = distance_num;
            disp(dataList(i));
            i = i + 1;  % İndeks artır
        end
    end
end

disp(dataList);  % Veri listesini ekranda göster
fclose(port);  % Seri port bağlantısını kapat
delete(port); % Portu silme

