clear all; clc;
localdir = 'C:\Users\fcsou\Desktop\Seguranca';
cd(localdir);

addpath('Code0');
addpath('Code1');
addpath('Code2');

IMG = imread('im1_t.bmp');

% Image forgery detection for high resolution images using SIFT and RANSAC algorithm
display('Code 0');
[img_out,time0] = sifter(IMG);
figure,imshow(img_out);

% BLOCK MATCHING METHOD/COPY-MOVE FORGERY DETECTION 
display('Code 1');
[img_block,time1] = copymoveperfect2(IMG);
figure,imshow(img_block);

% Analysis of Copy-Move Forgery Detection
display('Code 2');
%J = adapthisteq(IMG(:,:,1));
[image_copy,time2] = copy_move_2_adj(IMG, 1, graythresh(IMG), true);
figure,imshow(image_copy)