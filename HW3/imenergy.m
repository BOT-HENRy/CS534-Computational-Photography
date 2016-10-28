function E = imenergy( I )
%Compute the energy function
%computes the energy image E from an RGB image I

J = rgb2gray(im2double(I));
Gmag = imgradient(J);
E=Gmag;

end

