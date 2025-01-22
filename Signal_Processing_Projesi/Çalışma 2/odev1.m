%Sinyallerin etki alanını tanımladım
n=-3:3;

%x1 ve x2 sinyallerini tanımladım
x1=[0 0 0 1 0 0 0];
x2=2*x1;

%y1 ve y2 çıktılarını değerlendirdim
y1=x1;
y2=x2;

%Subplot ve stem kullanarak sinyalleri çizdim
subplot(2,2,1);
stem(n,x1,'b-');
title('x1[n]=δ[n]');

subplot(2,2,2);
stem(n,x2,'r-');
title('x2[n]=2δ[n]');

subplot(2,2,3);
stem(n,y1,'g-');
title('y1[n] (output for x1)');

subplot(2,2,4);
stem(n,y2,'m-');
title('y2[n] output for x2)');

%Evet y2 grafiği y1 grafiğinin 2 katıdır. Yani x2=2x1 diyebiliriz.

%Mustafa Usta 21.12.2023
