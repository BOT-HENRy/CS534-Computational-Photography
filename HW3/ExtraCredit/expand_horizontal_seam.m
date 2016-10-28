function  J = expand_horizontal_seam(I, S) 
%Expand 1 horizontal seam
[row, col, level] = size(I);
J = zeros(row+1, col, level);

for c = 1:col
    for r = 1:S(c)
        J(r,c,:) = I(r,c,:);
    end
    if S(c)==row
        J(S(c)+1,c,:) = I(row,c,:);
    else
        J(S(c)+1,c,:) = (I(S(c),c,:)/2+I(S(c)+1,c,:)/2);
    end
    for r = S(c)+2:row+1
        J(r,c,:) = I(r-1,c,:);
    end
end

end

