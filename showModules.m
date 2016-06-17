
modWidth = 8;

img2 = imresize(img,2);
[rows, cols] = size(img);

figure
imshow(img2)
hold on

%%
for k = start:modWidth:cols
    plot(k,1:rows,'r')
end