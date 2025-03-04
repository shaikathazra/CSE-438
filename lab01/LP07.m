clear all
close all;

% Read the image
I = imread('Picture4.png');

% Adjust contrast using imadjust
I_contrast = imadjust(I, stretchlim(I, [0.02 0.9]), []);

% Display the images
subplot(1,2,1), imshow(I), title('Original Image');
subplot(1,2,2), imshow(I_contrast), title('Contrast Adjusted Image');