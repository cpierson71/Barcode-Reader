function startCol = findStart(img,sens)
startCol = max(size(img)) + 1;
[rows,cols] = size(img);

for k = 1:rows
    for j = 1:cols
        if (img(k,j) == 0) && (k > sens && k < rows-sens) && (sum(img(k-sens:k+sens,j))==0)
            if j < startCol
                startCol = j;
            end
        end
    end
end

end

