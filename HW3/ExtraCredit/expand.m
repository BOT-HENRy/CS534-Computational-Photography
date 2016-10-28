function  J = expand(I, num_rows_expanded, num_cols_expanded)
%Resize
count = 1;
if num_rows_expanded > 0
    for h = 1:num_rows_expanded
        E = imenergy( I );
        S = horizontal_seam(E, count);
        I = uint8(expand_horizontal_seam(I, S)); 
        count = count+1;
    end
end
count = 1;
if num_cols_expanded > 0
    I = permute(I, [2 1 3]);
    for v = 1:num_cols_expanded
        E = imenergy( I );
        S = horizontal_seam(E, count);
        I = uint8(expand_horizontal_seam(I, S)); 
        count = count+1;
    end
    I = permute(I, [2 1 3]);
end

J=I;

end

