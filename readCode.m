function modCode = readCode(img,modWidth)
[~,cols] = size(img);
count = 0;
modCode = zeros(1,ceil(cols/modWidth));

for k = 1:modWidth:cols
    count = count+1;
    if (k < cols-4)
        modCode(count) = readModule(img,k,modWidth);
    end
end

end