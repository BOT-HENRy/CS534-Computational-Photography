clear

I = imread('union-terrace.jpg'); 

%-----Experiments 1-----
a = expand(I, 50, 0);
b = expand(I, 0, 50);
c = expand(I, 50, 50);
imwrite(a, 'qu.1a.jpg');
imwrite(b, 'qu.1b.jpg');
imwrite(c, 'qu.1c.jpg');