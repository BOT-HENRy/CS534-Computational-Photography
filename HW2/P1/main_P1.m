clear

img = imread('P1-bridge.jpg'); 
out = myhisteq(img); 
imwrite(out, 'P1-bridge-out.jpg');

img = imread('P1-snow.jpg'); 
out = myhisteq(img); 
imwrite(out, 'P1-snow-out.jpg');