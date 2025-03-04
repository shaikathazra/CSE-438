clear all
close all;

% Read the image
I = imread('Picture7.png'); 

% Compute the negative image
I_negative =imcomplement(I);

% Display the images
subplot(1,2,1), imshow(I), title('Original Image');
subplot(1,2,2), imshow(I_negative), title('Negative Image');