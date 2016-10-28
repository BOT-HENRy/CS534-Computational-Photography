function errImg = computeErr( origImg, newImg )
%create an “error” image by computing at each pixel the squared difference 
%between the provided .jpg image and the demosaiced image you produced

origI = im2double(origImg);
newI = im2double(newImg);
errImg = zeros(size(origI(:,:,1)));

% Get each channel from the original and new image
R1 = origI(:,:,1);
R2 = newImg(:,:,1);
G1 = origI(:,:,2);
G2 = newImg(:,:,2);
B1 = origI(:,:,3);
B2 = newImg(:,:,3);

%calculating the diffferecne
for i = 1:size(errImg,1)
    for j = 1:size(errImg,2)
        errImg(i,j) = (R1(i,j)-R2(i,j)).^2 + (G1(i,j)-G2(i,j)).^2 +(B1(i,j)-B2(i,j)).^2 ;
    end
end

errImg = im2uint8(errImg);

end

