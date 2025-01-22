N = 10;    %N değerini tanımadım.
n = 0:(2*N-1);    %n formülünü N'e göre tanımladım.
M_deger = [3, 5, 6, 7, 8, 10];      %Burada M listesini tanımladım.

for i = 1:length(M_deger)    %Burada  ise for döngüsü açarak 1den M listesindeki değer kadar saydırmasını sağladım.
    M = M_deger(i);               %M'in değerini, M'in for döngüsündeki değerine eşitledim böylelikle hangi sayıda iş. yapılacağını bilecek.
    x_M = sin(2*pi*M*n/10);  %x_M fonksiyonunu tanımlanmasını yaptım.
    subplot(2, 3, i);   % For döngüsünü kullanmamdaki temel amaç subplotlar kullanarak M değerlerini farklı grafiklerde göstermemdir. İstenirse M değerlerinin her birisi tek bir grafikte gösterilebilir ama ben ayrı ayrı kullanmayı tercih ettim görsellik açısından                                                
    stem(n, x_M);                              % her bir grafiği discreate şekilde stem fonksiyonu ile çiziyoruz.                       
    title(['x_{', num2str(M), '}(n) = sin(2*pi \cdot ', num2str(M), '\cdot n / 10)']);   %bu kısımdan sonrası grafiğin başlığını ayarlamımızı sağlıyor. Bu kısımları internetten bilgi alarak gerçekleştirdim.
    xlabel('n');               %yine bu kısımda ise x eksenine isim veriyoruz.
    ylabel(['x_{', num2str(M), '}(n)']);    %y ekseninin ismini yine denklemdeki n'in değerine göre veriyoruz.
end        %burada ise for döngüsünü kapatıyoruz.

%Not: 8. satırdaki subplot fonksiyonu içerisindeki 2,3,i değerleri aslında
%satır sütun ve i'nin değerini göstermektedir. istenirse 1 satır 6 sütunda
%yapılabilir lakin grafikler çok inceleceği ve görselliği bozulacağı için
%2,3 sistem kullanmayı tercih ettim. Teşekkürler.     

%Mustafa Usta   200313004          12.12.2023