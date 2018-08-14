%% E05 - Point Transformation
% Deep Ghaghara
% Spring 2017

image = imread ('cameraman.png');
figure; imshow(image); title ('Input Image');

img1=imread('corrupt1.png');
invert = 255-image;
figure; imshow(invert); title ('Guess 1');
figure; imshow(img1); title ('Corrupt1');
% To Test difference
% diff=img1-invert;
% sum(diff(:))

img2=imread('corrupt2.png');
C = img2(1,1) - image(1,1);
add=image+C;
figure; imshow(img2); title ('Corrupt 2');
figure; imshow(add); title ('Guess 2');
% To test difference
% diff=img2-add;
% sum(diff(:))

img3=imread('corrupt3.png');
fmin= min(image(:));
fmax= max(image(:));
fmin=double(fmin);
fmax=double(fmax);
hmin=0;
hmax=255;
linear=(((hmax-hmin)/(fmax-fmin))*(image-fmin))+hmin;
figure; imshow(linear); title ('Guess 3');
figure; imshow(img3); title ('Corrupt3');
% To test difference
% diff=img3-linear;
% sum(diff(:))


img4=imread('corrupt4.png');
x=uint8(log(double(image+1))*(255/log(256)));
figure; imshow(img4); title('Corrput 4'); 
figure; imshow(x); title ('Guess 4');
% To test difference
% diff=img4-x;
% sum(diff(:))


