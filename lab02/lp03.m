clear all;
close all;
clc;

% Read the image
I = imread('Picture2.png');

% Convert to grayscale if RGB
if size(I, 3) == 3
    I = rgb2gray(I);
end

% Convert to double for transformations
I_double = double(I);

% Logarithmic Transformation
c_log = 255 / log(1 + double(max(I(:)))); % Compute scaling constant
I_log = c_log * log(1 + I_double); % Apply transformation
I_log = uint8(I_log); % Convert back to uint8

% Power-law (Gamma) Transformation
gamma = 0.5; % Experiment with values (e.g., 0.5, 1.5, 2.0)
I_gamma = 255 * ((I_double / 255) .^ gamma); % Apply power-law transformation
I_gamma = uint8(I_gamma); % Convert back to uint8

% Display Results
figure;

subplot(1,4,1);
imshow(I);
title('Original Image');

subplot(1,4,2);
imshow(I_log);
title('Logarithmic Transformation');

subplot(1,4,3);
imshow(I_gamma);
title(['Power-law Transformation']);

% ID: 2020-1-60-072