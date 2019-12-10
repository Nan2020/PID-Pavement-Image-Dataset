close all; clc;
im_name = 'gsv_26';
thresh =150; %% change to show more values
I = imread([im_name '.jpg']);
figure(),
subplot(121),imshow(I)
bw = imread([im_name '.tif']);
bw = imresize(bw,[640,640]);
bw = bw>thresh;
rgb = imoverlay(I, bw, [1 0 0]);
subplot(122),imshow(rgb)