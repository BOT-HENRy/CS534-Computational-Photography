clear

source = imread('P3-source.jpg'); 
target = imread('P3-target.jpg'); 
J1 = mycolortransfer(source, target); 
imwrite(J1, 'P3-out.jpg', 'jpg');

source = imread('P3-mysource.jpg'); 
target = imread('P3-mytarget.jpg'); 
J2 = mycolortransfer(source, target); 
imwrite(J2, 'P3-myout.jpg', 'jpg');
