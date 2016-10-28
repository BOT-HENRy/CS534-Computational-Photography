clear

img1 = imread('P2-crayons-raw.bmp'); 
J1 = mydemosaic(img1); 
imwrite(J1, 'P2-crayons-demosaic.jpg', 'jpg');

img1 = imread('P2-union-raw.bmp'); 
J2 = mydemosaic(img1); 
imwrite(J2, 'P2-union-demosaic.jpg', 'jpg');

newImg = imread('P2-crayons-demosaic.jpg');
origImg = imread('P2-crayons.jpg');
J3 = computeErr(newImg,origImg);
imwrite(J3, 'P2-crayons-error.jpg', 'jpg');

newImg = imread('P2-union-demosaic.jpg');
origImg = imrotate(imread('P2-union.jpg'),90);
J4 = computeErr(newImg,origImg);
imwrite(J4, 'P2-union-error.jpg', 'jpg');