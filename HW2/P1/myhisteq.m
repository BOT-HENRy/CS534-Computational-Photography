function out_img = myhisteq( img )
%Apply Histogram Equalization on the input image
%   
HSVimage = rgb2hsv(img);
V = im2uint8(HSVimage(:,:,3));
figure;imhist(V);
cumHist = cumsum(imhist(V));
[height, width] = size(V);
for i = 1:height
    for j = 1:width
        W(i,j) = uint8(max(0, ((256/(height*width)) * cumHist(V(i,j)+1)-1)));
    end
end
figure;imhist(W);
HSVimage(:,:,3) = im2double(W);
out_img = hsv2rgb(HSVimage);
end

