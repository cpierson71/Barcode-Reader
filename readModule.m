function estModules = readModule(img,modWidth,start)

row = img(5,:);
oldVal = row(1);
pxlWidth = 0;
estModules = [];
count = 0;
for k = start:length(row)
    if row(k) == oldVal
        pxlWidth = pxlWidth+1;
    else
        count = count + 1;
        estModules(count) = (pxlWidth+1)/modWidth;
        pxlWidth = 0;
    end
    oldVal = row(k);
end

end