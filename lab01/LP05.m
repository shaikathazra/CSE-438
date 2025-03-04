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

% a. Addition (Element-wise addition)
I_add = I1 + I2;

% b. Subtraction (Element-wise subtraction)
I_sub = I1 - I2;

% c. Multiplication (Element-wise multiplication)
I_mul = I1 .* I2;

% d. Division (Element-wise division)
% Note: We need to handle division carefully to avoid division by zero.
% Add a small epsilon value to avoid division by zero.
epsilon = 1e-10;  % Small value to prevent division by zero
I_div = I1 ./ (I2 + epsilon);

% Display images
figure();
subplot(2,3,1), imshow(I1), title('Fig.1 (Original)');
subplot(2,3,2), imshow(I2), title('Fig.2 (Original)');
subplot(2,3,3), imshow(I_add), title('Addition (Fig.1 + Fig.2)');
subplot(2,3,4), imshow(I_sub), title('Subtraction (Fig.1 - Fig.2)');
subplot(2,3,5), imshow(I_mul), title('Multiplication (Fig.1 * Fig.2)');
subplot(2,3,6), imshow(I_div), title('Division (Fig.1 / Fig.2)');