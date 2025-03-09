clear all;
close all;
clc;

% Read the image
I = imread('Picture5.jpg');  % Input image

% Convert to grayscale if it is RGB
if size(I, 3) == 3
    I = rgb2gray(I);
end

% Apply Histogram Equalization
I_eq = histeq(I);

% Display the images
figure;
subplot(1,2,1);
imshow(I);
title('Original Image');

subplot(1,2,2);
imshow(I_eq);
title('Histogram Equalized Image');

% Display Histograms
figure;
subplot(1,2,1);
imhist(I);
title('Histogram of Original Image');

subplot(1,2,2);
imhist(I_eq);
title('Histogram of Equalized Image');

% ID: 2020-1-60-072