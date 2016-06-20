function [bounds, C] = findBarcode(img)

%Sharpen image
img = imsharpen(img,'Radius',2,'Amount',1.9);
img = wiener2(img,[3 3]);

accum = zeros(size(img));
for w = 10:15
    % Create the current kernel
    kernel = double([-1; zeros(w, 1); 2; zeros(w, 1); -1]');
    
    % Calculate absolute response
    response = abs(conv2(double(img), kernel, 'same'));
    
    % Store the maximum filter response in the accumulator
    accum = max(accum, response);
end

maxA = max(accum(:));
accum = round(accum./maxA);

h = fspecial('disk',50);
imgFilt = imfilter(accum,h);

level = graythresh(imgFilt);
imgFilt = im2bw(imgFilt,level);

imgFilt = imerode(imgFilt, ones(80));
%%
[rows,cols] = size(imgFilt);
minR = rows;
minC = cols;
maxR = 0;
maxC = 0;
for k = 1:rows
    for j = 1:cols
        if imgFilt(k,j) == 1
            if k < minR
                minR = k;
            end
            if k > maxR
                maxR = k;
            end
            if j < minC
                minC = j;
            end
            if j > maxC
               maxC = j; 
            end
        end
    end
end

% figure
% imshow(imgFilt)
% hold on
% scatter(minC,minR,'r','filled','LineWidth',5)
% scatter(maxC,maxR,'r','filled','LineWidth',5)

bcRegion = zeros(rows,cols);
padding = 90;
for k = 1:rows
    for j = 1:cols
        if j >= minC-padding && j <= maxC+padding && ... 
                k >= minR-padding && k <= maxR+padding
           bcRegion(k,j) = 1;
        end
    end
end

bounds = [minC-padding maxC+padding minR-padding maxR+padding];

C = imfuse(bcRegion,img);
% figure
% imshow(C)

end


