clear all;
close all;

% Read the image
I2 = imread('Picture2.png');

binaey_image = im2bw(I2);
threshold_025 = im2bw(I2 ,0.25);
threshold_50 = im2bw(I2 ,0.50);
threshold_75 = im2bw(I2 ,0.75);

% Display images
figure();
subplot(2,3,1), imshow(binaey_image ), title('Binary');
subplot(2,3,2), imshow(threshold_025), title('threshold25');
subplot(2,3,3), imshow(threshold_50), title('threshold50');
subplot(2,3,4), imshow(threshold_75), title('threshold75');
