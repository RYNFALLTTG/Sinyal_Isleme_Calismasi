
tx = 1:0.1:5;  % 1’den 5’e 0.1 adımlarla artarak giden x domain (alan) vektörünü oluşturup tx olarak adlandırdım
th = 2:0.1:7;  % 2’den 7’ye 0.1 adımlarla artarak giden h domain (alan) vektörünü oluşturup th olarak adlandırdım
 x =(ones(1, length(tx)));    % tx boyutunda ve 1’lerden oluşan x vektörünü oluşturdum
 h =(ones(1, length(th)));    % th boyutunda ve 1’lerden oluşan h vektörünü oluşturdum
z = conv(x, h);                    % x ve h vektörlerinin konvolüsyonu olan z vektörünü buldum
tz = linspace(tx(1)+th(1), tx(end)+th(end), length(z));
//////////////////
subplot(4, 1, 1);                  % x,h,z vektörlerini çizdirdim
stem(tx, x,'b','--');
xlabel('t');
ylabel('x(t)');
//////////////////
subplot(4, 1, 2);
stem(th, h,'g',':');
xlabel('t');
ylabel('h(t)');
//////////////////
subplot(4, 1, 3);
stem(tz,z','c','--'); 
xlabel('t1');
ylabel('z(t1)')
//////////////////
subplot(4, 1, 4);
stem(z,'p','r');
xlabel('t2');
ylabel('z(t2)')

%z vektörü h ve x vektörlerinin hareketi sonucu oluştuğu için  uzunlukları toplamına eşittir.

