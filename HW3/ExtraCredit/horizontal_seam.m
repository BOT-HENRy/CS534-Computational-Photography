function  S = horizontal_seam(I,count)
%Compute the optimal horizontal seam
% takes an image and finds the (one) optimal horizontal seam
[row, col] = size(I);
S = zeros(1,col);
cost = I;
for c = 2:col
    for r = 1:row
        cost(r,c) = cost(r,c-1)+cost(r,c);          
    end
end

lastCol = cost(:,col);
sortLastCol = sort(lastCol);
currMin = sortLastCol(mod((count*4),row));
minIndex = find(lastCol==min(currMin));
minIndex = minIndex(1);
S(col) = minIndex;
for i = col-1:-1:1
    S(i)=minIndex;
end

end

