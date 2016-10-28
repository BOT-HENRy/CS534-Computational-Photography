clear

I = imread('union-terrace.jpg'); 

%-----Experiments 1-----
a = shrnk(I, 0, 100);
b = shrnk(I, 100, 0);
c = shrnk(I, 100, 100);
imwrite(a, 'qu.1a.jpg');
imwrite(b, 'qu.1b.jpg');
imwrite(c, 'qu.1c.jpg');

%-----Experiments 2-----
%E = imenergy(I);
%E2a = imagesc(E);
%saveas(E2a, 'qu.2a.jpg');
%E2b = horizontal_seam(E);

%-----Experiments 3-----
%E3 = shrnk(I, 1, 1);
%imwrite(E3, 'qu.3.jpg');

%-----Experiments 4-----
%I4a = imread('qu.4a.jpg');
%E4a = shrnk(I4a, 30, 30);
%imwrite(E4a, 'qu.4b.jpg');

%-----Experiments 5-----
%I5a = imread('qu.5a.jpg');
%E5a = shrnk(I5a, 100, 100);
%imwrite(E5a, 'qu.5b.jpg');