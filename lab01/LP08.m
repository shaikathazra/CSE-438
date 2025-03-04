clear all
close all;

% Read the image
I = imread('Picture5.jpg'); 

% Brighten the image using imadjust
I_bright = imadjust(I, [], [0.25 1]); % Increase intensity

% Display the images
subplot(1,2,1), imshow(I), title('Original Image');
subplot(1,2,2), imshow(I_bright), title('Brightened Image');