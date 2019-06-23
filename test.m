clc
clear
close all

img1 = imread('ver.jpg');
img2 = imread('horizon.jpg');
img3 = imread('diagonal.jpg');
img4 = imread('curve.jpg');
img5 = imread('doted.jpg');

h1 = Gdir_hist(img1);
h2 = Gdir_hist(img2);
h3 = Gdir_hist(img3);
h4 = Gdir_hist(img4);
h5 = Gdir_hist(img5);

subplot(2,3,1); bar(h1); title('ver');
subplot(2,3,2); bar(h2); title('hor');
subplot(2,3,3); bar(h3); title('diag');
subplot(2,3,4); bar(h4); title('curve');
subplot(2,3,5); bar(h5); title('dot');

c1 = classifyTexture(img1)
c2 = classifyTexture(img2)
c3 = classifyTexture(img3)
c4 = classifyTexture(img4)
c5 = classifyTexture(img5)
