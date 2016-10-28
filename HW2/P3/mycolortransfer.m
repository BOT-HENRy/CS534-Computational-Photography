function output = mycolortransfer( source, target )
%modify the colors of one image based on the colors in a second image

%convert rgb to lab 
source = rgb2lab(source);
target = rgb2lab(target);
%get each channel of the LAB
sourceL = source(:,:,1);
sourceA = source(:,:,2);
sourceB = source(:,:,3);
targetL = target(:,:,1);
targetA = target(:,:,2);
targetB = target(:,:,3);
%compute the ratio of standard deviations
L_out = (std2(targetL) / std2(sourceL))*(sourceL - mean2(sourceL)) + mean2(targetL);
A_out = (std2(targetA) / std2(sourceA))*(sourceA - mean2(sourceA)) + mean2(targetA);
B_out = (std2(targetB) / std2(sourceB))*(sourceB - mean2(sourceB)) + mean2(targetB);
%output the final image
output = lab2rgb(cat(3, L_out, A_out, B_out));

end

