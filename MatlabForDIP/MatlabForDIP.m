%% E01 - MATLAB for Digital Image Processing
% Deep Ghaghara
% Spring 2017

f=imread('mountain.png');
meanMountainColumn = mean(f);
darkestCol = find ( (meanMountainColumn == min (meanMountainColumn))==1 );

[R,C] = size(f);
for r = 1:R
    for c = 1:C
        flipImage(r,c) = f(R-r+1,c);
    end
end
figure;imshow(flipImage);

[R,C] = size(f);
halfImage = zeros (R/2,C/2, 'uint8');
for r = 1:R/2
    for c=1:C/2
        halfImage(r,c) = f(r*2-1,c*2-1);
    end
end
figure;imshow(halfImage);

[R,C] = size(f);
myHist = zeros (1,256,'int16');
for r = 1:R
    for c= 1:C        
        myHist(f(r,c)+1) = myHist(f(r,c)+1) + 1;
    end
end
figure;plot(myHist);