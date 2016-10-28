function  S = horizontal_seam(I)
%Compute the optimal horizontal seam
% takes an image and finds the (one) optimal horizontal seam
[row, col] = size(I);
S = zeros(1,col);
cost = I;
path = zeros(row, col);
for c = 2:col
    for r = 1:row
        %special case for head and tail
        if r==1
            prevR = [cost(1,c-1),cost(2,c-1)];
            cost(1,c) = min(prevR)+cost(1,c);
            curIndex = find(prevR == min(prevR));
            path(1,c) = curIndex(1);
        elseif r==row
            prevR = [cost(row-1,c-1),cost(row,c-1)];
            cost(row,c) = min(prevR)+cost(row,c);
            curIndex = find(prevR == min(prevR));
            path(row,c) = row + curIndex(1) - 2;
        %normal case
        else
            prevR = [cost(r-1,c-1),cost(r,c-1),cost(r+1,c-1)];
            cost(r,c) = min(prevR)+cost(r,c);
            curIndex = find(prevR == min(prevR));
            path(r,c) = r + curIndex(1) - 2;
        end            
    end
end
%-----Experiments 2-----
%E2b = imagesc(cost);
%saveas(E2b, 'qu.2b.jpg');

lastCol = cost(:,col);
minIndex = find(lastCol==min(lastCol));
minIndex = minIndex(1);
S(col) = minIndex;
for i = col-1:-1:1
    S(i) = path(minIndex,i+1);
    minIndex = S(i);
end

end

