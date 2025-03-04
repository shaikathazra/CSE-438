clear all;
close all;

% Read the image
I = imread('Picture1.png');

n4 = bwperim(I, 4);
n8 = bwperim(I, 8);

figure();
subplot(1,2,1);
imshowpair(I,n4,'montage');
subplot(1,2,2);
imshowpair(I,n8,'montage');