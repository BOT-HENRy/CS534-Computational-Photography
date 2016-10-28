function  J = remove_horizontal_seam(I, S) 
%Remove 1 horizontal seam
[row, col, level] = size(I);
J = zeros(row-1, col, level);
for c = 1:col
    index = 0;
    for r = 1:row-1
        index = index+1;
        if r == S(c)
            index = index+1;
        end
        J(r,c,:) = I(index,c,:);
        %-----Experiments 3-----
        %J(index,c,:) = I(index,c,:);
    end
end

end

