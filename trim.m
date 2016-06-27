function img = trim(img)
%Trim white space above and below barcode

[rows,cols] = size(img);

for k = rows:-1:1
    if img(k,:) == ones(1,cols)
        img(k,:) = [];
    end
end

end