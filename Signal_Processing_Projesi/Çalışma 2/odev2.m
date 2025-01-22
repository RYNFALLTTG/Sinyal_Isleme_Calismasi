%x[n] 0<=n<=5 için 1 ve aksi takdirde 0için
x=ones(1,6);

%x'in kendisi ile konvolüsyonunu aldım
y=conv(x,x);

%n vektörünü tanımadım 

n=0:10;

%n'i y ye göre grafiğini çizdirdim.

stem(n,y,'r','p');

%Eksenleri etiketledim ve şekle başlık verdim
xlabel('Time');
ylabel('Amplitude');
title('y[n]');

%x grafiğinin kendisiyle konvülsüyonunu aldığımız için kaydırma mikarı da
%kendisi kadar yani 2 katı oldu.  2*5=10

%Mustafa Usta 21.12.2023