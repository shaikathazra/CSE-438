clear all
close all;

% Read the two images
I1 = imread('Picture1.png'); 
I2 = imread('Picture2.png'); 

% Convert to grayscale if needed
if size(I1, 3) == 3
    I1 = rgb2gray(I1);
end

if size(I2, 3) == 3
    I2 = rgb2gray(I2);
end
% Resize I2 to match I1 dimensions
I2 = imresize(I2, size(I1));

% Convert to binary (if not already binary)
I1 = im2bw(I1);
I2 = im2bw(I2);

% AND operation
I_AND = I1 & I2;

% OR operation
I_OR = I1 | I2;

% NOT operation (only on Fig.1)
I_NOT = ~I1;

% Display images
figure();
subplot(2,3,1), imshow(I1), title('Fig.1 (Original)');
subplot(2,3,2), imshow(I2), title('Fig.2 (Original)');
subplot(2,3,3), imshow(I_AND), title('AND Operation');
subplot(2,3,4), imshow(I_OR), title('OR Operation');
subplot(2,3,5), imshow(I_NOT), title('NOT Operation (Fig.1)');
