clear all;
close all;

% Read the image
I = imread('Picture1.jpg');

stretched_img = imadjust(I, stretchlim(I, [0.01, 0.99]), []);

subplot(1,2,1); imshow(I); title('Original Image');
subplot(1,2,2); imshow(stretched_img); title('Contrast Stretched Image');

% ID: 2020-1-60-072