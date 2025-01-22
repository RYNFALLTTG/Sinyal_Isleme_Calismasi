%x[n]'i 0<=n<=5 için 1 ve aksi takdirde 0 değerleriyle tanımladım
x = ones(1, 6);
% u[n]'yi 0<=n<=5 için 1 ve aksi takdirde 0 değerleriyle tanımladım
u = ones(1, 6);
%  Bölüm I: x'in u ile konvolüsyon kısmı
y = conv(x, u);
% Part II: x'in u[n+5] ile konvolüsyon kısmı
u_shifted = [zeros(1, 5), u];  % u[n]'yi 5 kaydırdım
u_shifted = u_shifted(1:length(x));  % u_shifted'ı x ile aynı uzunlukta yaptım
y2 = conv(x, u_shifted);
%  İndeks vektörü n'yi tanımladım
n = 0:10;
% Bölüm I için y'ye karşı n grafiği
subplot(2, 1, 1);  % Daha iyi görselleştirme için 2x1 alt grafik oluşturmayı tercih ettim
stem(n, y,'m','marker', '^');
xlabel('Time');
ylabel('Amplitude');
title('y[n] (Part I)');

% Bölüm II için y2'ye karşı n grafiği
subplot(2, 1, 2);  % Bölüm II için ikinci alt grafiğini kullandım
stem(n, y2,'g','marker', '^');
xlabel('Time');
ylabel('Amplitude');
title('y[n] (Part II)');

%1. partta kendisi ile konvüle olduğu için grafik gittikçe yükseliyor ve
%düşüyordu. 2. partta ise kaydırma yapıldığında ilk 5 değer 0a düştü ve
%çarpımları 0 oldu. 5den sonra ise 1 değerini aldı.
