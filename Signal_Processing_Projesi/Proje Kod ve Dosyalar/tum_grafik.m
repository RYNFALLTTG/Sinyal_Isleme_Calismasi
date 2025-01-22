

%y(n)=(1/(windowSize))*(x(n)+x(n−1)+...+x(n−(windowSize−1)))  matematiksel formülüdür

%windowWidth = 11;   %kernel boyutunu ayarlıyoruz        
%kernel = ones(1, windowWidth)/WindowWidth;                %Bu kodda temelde kernel filtresinin kodudur.
%lowPassFilteredSignal = conv(dataList, kernel, 'same');

%{--------------------------------------------------------------------------------------------------------------------------------}%


% 0 ile 100 arasında rastgele değerler içeren sensorData oluşturma
dataList = randi([0, 100], 60, 1);

% Low pass filtresi oluşturma
lowPassFiltre =  [1, 1, 1]/3;
% basit bir sonlu impulse response filtresi (FIR filtresi) olarak ifade edilebilir
% Gauss Filtresi olarak sınıflandırılabileceğini belirtebilirim. Bu filtreler, düşük frekans 
% bileşenlerini güçlü bir şekilde geçirirken yüksek frekans bileşenlerini sınırlayarak gürültüyü azaltma amacıyla kullanılırlar.

% High pass filtresi oluşturma
highPassFiltre = [-1, 0, 1]/1; 
%Laplacian filtresi olduğunu görebiliriz. Laplacian filtreler, kenar tespiti ve vurgulama amacıyla kullanılırken, 
% düzeltilmiş Laplacian filtreleri kenarları daha net bir şekilde vurgulamak için kullanılır.

meanFiltre = [1,1,1,1,1]/5;
% Bu tür bir filtrenin tipik olarak "Mean Filtresi" kategorisine girmektedir
% ve Ortalama filtreler, basitçe veri içerisindeki bir pencerenin (filtre boyutu) ortalamasını alarak düşük frekanslı 
% bileşenleri korurken, yüksek frekanslı bileşenleri azaltmak için kullanılırlar.

% Filtreleri uygulayarak sensorData'yı işleme
lowPassSonuc = conv(dataList, lowPassFiltre, 'same');
highPassSonuc = conv(dataList, highPassFiltre, 'same');
meanSonuc = conv(dataList, meanFiltre, 'same');

% Subplot ile grafikleri görselleştirme
subplot(4, 1, 1);
plot(dataList);
title('Orijinal Veri');

subplot(4, 1, 2);
plot(lowPassSonuc);
title('Low Pass Filtre Uygulanmış Veri');

subplot(4, 1, 3);
plot(highPassSonuc);
title('High Pass Filtre Uygulanmış Veri');

subplot(4, 1, 4);
plot(meanSonuc);
title('Mean Filtre Uygulanmış Veri');
