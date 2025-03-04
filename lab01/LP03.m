clear all;
close all;

% Read the image
I2 = imread('Picture2.png');

binaey_image = im2bw(I2);
threshold_025 = im2bw(I2 ,0.25);
threshold_50 = im2bw(I2 ,0.50);
threshold_75 = im2bw(I2 ,0.75);

% Find the connected components using bwconncomp
cc_binary = bwconncomp(binaey_image); 
cc_threshold_025 = bwconncomp(threshold_025);  
cc_threshold_50 = bwconncomp(threshold_50);    
cc_threshold_75 = bwconncomp(threshold_75);    

% Number of objects (connected components)
numObjects_binary = cc_binary.NumObjects;
numObjects_threshold_025 = cc_threshold_025.NumObjects;
numObjects_threshold_50 = cc_threshold_50.NumObjects;
numObjects_threshold_75 = cc_threshold_75.NumObjects;

% Display the results
disp(['Number of objects in the binary image: ', num2str(numObjects_binary)]);
disp(['Number of objects with threshold 0.25: ', num2str(numObjects_threshold_025)]);
disp(['Number of objects with threshold 0.50: ', num2str(numObjects_threshold_50)]);
disp(['Number of objects with threshold 0.75: ', num2str(numObjects_threshold_75)]);

