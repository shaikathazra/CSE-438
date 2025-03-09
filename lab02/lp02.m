clear all;
close all;
clc;

% Read the image
I = imread('Picture1.jpg');

% Convert to grayscale if the image is RGB
if size(I, 3) == 3
    I = rgb2gray(I);
end

% Get the correct size of the grayscale image
[rows, cols] = size(I);

% Create an array to store bit planes
bit_planes = zeros(rows, cols, 8, 'uint8'); 

% Extract bit planes
for i = 1:8
    bit_planes(:,:,i) = uint8(bitget(I, i) * 255); % Extract i-th bit and scale to 0-255
end

% Display the bit planes
figure;
for i = 1:8
    subplot(2,4,i);
    imshow(bit_planes(:,:,i)); % Show bit plane
    title(['Bit Plane ', num2str(i)]);
end

% ID: 2020-1-60-072
