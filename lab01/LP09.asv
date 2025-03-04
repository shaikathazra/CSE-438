clear all
close all;

% Read the image
I = imread('Picture6.png'); 

% Quantize using built-in function
[I_quantized, map] = gray2ind(I, 8); % 8-level quantization

% Convert back to grayscale format for display
I_quantized = uint8(I_quantized * (255 / (8 - 1)));

% Display the images
subplot(1,2,1), imshow(I), title('Original Grayscale Image');
subplot(1,2,2), imshow(I_quantized), title('8-Level Quantized Image');
