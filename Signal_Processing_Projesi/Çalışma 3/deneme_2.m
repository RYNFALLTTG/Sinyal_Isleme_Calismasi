clc
clear all
image = imread('resim_2.png'); 
%resmi yükledim
x=[-1 0 1;-2 0 2;-1 0 1];
%X ekseninde türev yaklaşımı
y=[-1 -2 -1; 0 0 0 ;1 2 1];
%Y ekseninde türev yaklaşımı
gray =rgb2gray(image);   
%resmi gray'e çevirdim
kernel = [1 2 1; 1 -2 1; 1 2 1];
% Laplacian ile 3x3 kernel oluşturdum
result = conv2(double(gray ), double(kernel), 'same');
% Convolution işlemi ile Laplacian uyguladım
image2=double(result);
%çıkan sonucu işlemek için double formatına çevirdim
Gx=conv2(x,image2); 
Gy=conv2(y,image2);
%aldığım türevleri resime uyguladım
gradient=(Gx.^9+Gy.^9).^0.09;
%daha sonra gradyan metodu ile resmi 3. kere işledim.
montage({image,gray,uint8(gradient)}, 'Size', [1 3]);
% Sonucu gösterdim

% Mustafa Usta 02.01.2024 lab3 ödevi