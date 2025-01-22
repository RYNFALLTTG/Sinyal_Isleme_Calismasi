N = 8;       %Burada tanımlamaları yaptım.
n = 0:7*N;
x1 = 2*sin(2*pi*n/N) + sin(3*pi*n/N);   %1. grafik
x2 = cos(2*pi*n/N) + 3*cos(5*pi*n/(2*N));  %2. grafik

subplot(2,1,1);   %subplot kullanarak 2 grafiği alt ve üst olacak şekilde koymayı hedefledim.
stem(n, x1, 'r'); % X1[n]'in grafiğini oluşturur, kırmızı dolu daire sembolleri kullanır.
title('Sinyal X1[n]');
xlabel('n');
ylabel('X1[n]');
ylim([-5, 5]); % Y eksenini -5 ile 5 arasında sınırlar.  Buradaki değerleri değiştirecek grafiğin okunurluğu artacaktır.

subplot(2,1,2);
stem(n, x2, 'b'); % X2[n]'in grafiğini oluşturur, mavi renkli elmas sembollerini kullanır.
title('Sinyal X2[n]');
xlabel('n');
ylabel('X2[n]');
ylim([-5, 5]); % Y eksenini -5 ile 5 arasında sınırlar.   Buradaki değerleri değiştirecek grafiğin okunurluğu artacaktır.
 
  % Mustafa Usta  200313004  12.12.2023