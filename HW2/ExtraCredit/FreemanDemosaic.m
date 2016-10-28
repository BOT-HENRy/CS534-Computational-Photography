function outImg = FreemanDemosaic( img )
%Bill Freeman's improvement to the simple bilinear interpolation approach.
imgD = im2double(img);
[height,width] = size(imgD);

%initialize 3 channels
redC = zeros(height, width);
greenC = zeros(height, width);
blueC = zeros(height, width);

%get color pixels for each channel
redC(1:2:height, 1:2:width) = imgD(1:2:height, 1:2:width);
greenC(1:2:height, 2:2:width) = imgD(1:2:height, 2:2:width);
greenC(2:2:height, 1:2:width) = imgD(2:2:height, 1:2:width);
blueC(2:2:height, 2:2:width) = imgD(2:2:height, 2:2:width);

%Create filter
RB1 = [0.5, 0, 0.5];
RB2 = [0.5; 0; 0.5]; 
RB3 = [0.25, 0, 0.25; 0, 0, 0; 0.25, 0, 0.25];
G = [0, 0.25, 0;
     0.25, 0, 0.25;
     0, 0.25, 0];
 
%apply imfilter
Red = imfilter(redC, RB1)+imfilter(redC, RB2)+imfilter(redC, RB3)+redC;
Green = imfilter(greenC, G)+greenC;
Blue = imfilter(blueC, RB1)+imfilter(blueC, RB2)+imfilter(blueC, RB3)+blueC;

RD= medfilt2(Red - Green);

BD= medfilt2(Blue - Green);

Red = Green + RD;

Blue = Green + BD;

% Combine to get color images
outImg = cat(3, Red, Green, Blue);

end

