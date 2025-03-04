clear all;
close all;

% Read the image
I2 = imread('Picture2.png');

% Convert to grayscale if needed
if size(I2, 3) == 3
    I2 = rgb2gray(I2);
end

% Display the image and select two points using the mouse
imshow(I2);
title('Click two points in the image');

% Get the coordinates of the two points selected by the user
% Use ginput to select two points from the image
[x, y] = ginput(2);  % Select 2 points

% Coordinates of the two points
x1 = x(1);
y1 = y(1);
x2 = x(2);
y2 = y(2);

% Calculate the Euclidean distance between the two points
distance = sqrt((x2 - x1)^2 + (y2 - y1)^2);

% Display the Euclidean distance
disp(['Euclidean Distance between the two points: ', num2str(distance)]);