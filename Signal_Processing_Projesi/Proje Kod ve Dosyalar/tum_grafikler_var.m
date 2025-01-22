
%y(n)=(1/(windowSize))*(x(n)+x(n−1)+...+x(n−(windowSize−1)))  matematiksel formülüdür

%windowWidth = 11;   %kernel boyutunu ayarlıyoruz        
%kernel = ones(1, windowWidth)/WindowWidth;                %Bu kodda temelde kernel filtresinin kodudur.
%lowPassFilteredSignal = conv(dataList, kernel, 'same');

%{--------------------------------------------------------------------------------------------------------------------------------}%


% 0 ile 100 arasında rastgele değerler içeren sensorData oluşturma
dataList = randi([0, 100], 60, 1);

% Low pass, high pass ve mean filtrelere uygulama
lowPassFiltre =  [1, 1, 1]/3;
highPassFiltre =  [-1, 0, 1]/1; 
meanFiltre = [1, 1, 1, 1, 1]/5;

lowPassSonuc = conv(dataList, lowPassFiltre, 'same');
highPassSonuc = conv(dataList, highPassFiltre, 'same');
meanSonuc = conv(dataList, meanFiltre, 'same');


% Orijinal veri ile tek grafikte gösterme
figure;
subplot(4, 1, 1);
hold on;
plot(dataList, 'DisplayName', 'Orijinal Veri');
plot(lowPassSonuc, 'DisplayName', 'Low Pass Filtre Uygulanmış Veri');
plot(highPassSonuc, 'DisplayName', 'High Pass Filtre Uygulanmış Veri');
plot(meanSonuc, 'DisplayName', 'Mean Filtre Uygulanmış Veri');
hold off;
legend;
title('Tüm Filtre Uygulanmış Veriler');
subplot(4, 1, 2);
plot(dataList, 'DisplayName', 'Orijinal Veri');
hold on;
plot(lowPassSonuc, 'DisplayName', 'Low Pass Filtre Uygulanmış Veri');
hold off;
legend;
title('Orijinal Veri ve Low Pass Filtre Uygulanmış Veri');

subplot(4, 1, 3);
plot(dataList, 'DisplayName', 'Orijinal Veri');
hold on;
plot(highPassSonuc, 'DisplayName', 'High Pass Filtre Uygulanmış Veri');
hold off;
legend;
title('Orijinal Veri ve High Pass Filtre Uygulanmış Veri');

subplot(4, 1, 4);
plot(dataList, 'DisplayName', 'Orijinal Veri');
hold on;
plot(meanSonuc, 'DisplayName', 'Mean Filtre Uygulanmış Veri');
hold off;
legend;
title('Orijinal Veri ve Mean Filtre Uygulanmış Veri');
%{
Mean filtreyi uyguladığınız orijinal veri ile tek grafikte gösterme
figure;
plot(sensorData, 'DisplayName', 'Orijinal Veri');
hold on;
plot(meanSonuc, 'DisplayName', 'Mean Filtre Uygulanmış Veri');
hold off;
legend;
title('Orijinal Veri ve Mean Filtre Uygulanmış Veri');
%}