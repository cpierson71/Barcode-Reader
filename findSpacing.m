function modWidth = findSpacing(img,start)
[~,cols] = size(img);
modWidth = 0;
change = false;

for k = start:cols
    if (change && img(2,k) == 0)
       break; 
    end
    if (img(2,k) == 1)
       modWidth = modWidth + 1;
       change = true;
    end
end

end
