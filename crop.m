function img = crop(img)

[rows,cols] = size(img);

for k = rows:-1:1
    if img(k,:) == ones(1,cols)
        img(k,:) = [];
    end
end

% [rows,cols] = size(img);
% 
% for j = cols:-1:1
%     if img(:,j) == ones(rows,1)
%         img(:,j) = [];
%     end
% end

end