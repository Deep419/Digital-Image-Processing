%% E06 - Histograms
% Deep Ghaghara
% Spring 2017

f = imread('unequal.png');
figure; imshow(f); title('input image');
h = imhist(f);
figure; plot (h); title ('Histogram of input');
N = numel(f);
hn = h/N;
figure; plot (hn); title ('Normalized Histogram of Input');
sum(hn(:))
%cumsum([1 2]) = 1 3
c = cumsum(hn);
figure; plot (c); title ('CDF of Input');

% +1 to match intensity with array index starting value
g = c(f + 1);
figure; imshow(g); title('Histogram-Equalized-Image');
gh = imhist(g);
figure; plot(gh); title('Histogram of Histogram-Equalized-Image');
gn = gh/numel(g);
figure; plot (gn); title ('Normalized Histogram of Histogram-Equalized-Image');
sum(gn(:))
gc = cumsum(gn);
figure;plot(gc); title ('CDF of Histogram-Equalized-Image');
