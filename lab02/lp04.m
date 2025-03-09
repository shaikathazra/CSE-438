clear all;
close all;
clc;

% Read the images
I = imread('Picture3.jpg');      
Ref = imread('Picture4.png'); 

% Convert images to grayscale if they are RGB
if size(I, 3) == 3
    I = rgb2gray(I);
end
if size(Ref, 3) == 3
    Ref = rgb2gray(Ref);
end

% Perform histogram matching
I_matched = imhistmatch(I, Ref);

% Display Images
figure;
subplot(1,3,1);
imshow(I);
title('Original Image');

subplot(1,3,2);
imshow(Ref);
title('Reference Image');

subplot(1,3,3);
imshow(I_matched);
title('Matched Output Image');

% Display Histograms
figure;
subplot(1,3,1);
imhist(I);
title('Histogram of Original Image');

subplot(1,3,2);
imhist(Ref);
title('Histogram of Reference Image');

subplot(1,3,3);
imhist(I_matched);
title('Histogram of Matched Output Image');

% ID: 2020-1-60-072