clc
clear all
resim_1=imread('resim_1.png'); %görüntü dosyasının matlaba alınması
resim_2=imread('resim_2.png');
siyahbeyaz=imread('siyahbeyaz.jpg');
griton=imread('griton.jpg');
%{
figure, imshow(resim_1) %alınan görüntünün görüntülenmesi
title(orijinal_resim_1);
%}
%-------------------------------------------------------------

noise_resim_1=imnoise(resim_1,'salt & pepper',0.25); 
%{
%görüntü üzerine gürültü eklenmesi
% imnoise(işelenecek_görüntü, ‘gürültü_türü’,gürültü_yoğunluğu) 
figure, imshowpair(resim_1,noise_resim_1,'montage') 
% iki resmşn karşılaştırılmalı olarak görüntülenmesi
title('orjinal ve gürültülü resim'); %Figure2
%}
%-------------------------------------------------------------

%{
% Görüntüye Üzerine “imgaussfilt” fonksiyonu ile filtre uygulanması
%imgaussfilt(işlenecek_görüntü, Gauss_Standart_Sapma_değeri)
gaussfiltered_resim_1=imgaussfilt(noise_resim_1,2.5); 
%gauss filtre uygulanması
figure, imshowpair(noise_resim_1,gaussfiltered_resim_1,'montage')
title('gürültülü ve filtrelenmiş resim');
%}
%-------------------------------------------------------------

gray_noise_resim_1=rgb2gray(noise_resim_1);
%{
% gri tonlarına indirgeme
figure,imshow(gray_noise_resim_1)
title('gürültülü resmin gri tonlarına indirgenmesi');
%}
%-------------------------------------------------------------

% Görüntüye Üzerine “medfilt2” fonksiyonu ile filtre uygulanması
% medfilt2(İşlenecek_görüntü)
meadfiltered_resim_1=medfilt2(gray_noise_resim_1); %median filtre
%{
figure, imshowpair(gray_noise_resim_1,meadfiltered_resim_1,'montage')
title('gürültülü ve median filtreli ');
%}
%-------------------------------------------------------------


%IMAGE GRADIENT WITH CONVOLUTION
%figure,imshow(siyahbeyaz) %figure6
%title('orjinal resim');
siyahbeyaz_2=double(rgb2gray(siyahbeyaz));
%Sobel operator
x=[-1 0 1;-2 0 2;-1 0 1]; %X ekseninde türev
 %yaklaşımı
y=[-1 -2 -1; 0 0 0 ;1 2 1];%Y ekseninde türev
 %yaklaşımı
Gx=conv2(x,siyahbeyaz_2); %yaklaşımların resme
%uygulanması
Gy=conv2(y,siyahbeyaz_2);

%figure, imshowpair(Gx,Gy,'montage') %figure7
%title('X ve Y ekseninde türev alınması');

%-------------------------------------------------------------

%Gradient=(Gx.^2+Gy.^2).^0.5; % yatay ve dikey olarak ayrı ayrı uygulanan
 %türevlerden işlenmiş görüntünün tekrar elde edilmesi

%figure,imshow(uint8(Gradient)) %figure8
%title('gradient metodu ile resim içindeki şekil sınırlarının belirlenmesi')

%-------------------------------------------------------------
%{
figure,imshow(griton)
title('orjinal resim');
griton_2=double(griton);

%Sobel operator
x=[-1 0 1;-2 0 2;-1 0 1];
y=[-1 -2 -1; 0 0 0 ;1 2 1];
%yaklaşımların resme uygulanması
Gx=conv2(x,griton_2);
Gy=conv2(y,griton_2);
figure, imshowpair(Gx,Gy,'montage')
title('X ve Y ekseninde türev alınması');

%-------------------------------------------------------------

Gradient=(Gx.^2+Gy.^2).^0.5;
%yatay ve dikey olarak ayrı ayrı uygulanan türevlerden işlenmiş görüntünün tekrar elde edilmesi
figure,imshow(uint8(Gradient))
title('gradient metodu ile resim içindeki şekil sınırlarının belirlenmesi')
%}
%-------------------------------------------------------------





