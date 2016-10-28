clear

img1 = imread('P2-crayons-raw.bmp'); 
J1 = FreemanDemosaic(img1);
imwrite(J1, 'P2-crayons-freeman.jpg', 'jpg');

img1 = imread('P2-union-raw.bmp'); 
J2 = FreemanDemosaic(img1);
imwrite(J2, 'P2-union-freeman.jpg', 'jpg');
