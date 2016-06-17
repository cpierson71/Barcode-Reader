img = imread('bcImg.jpg');
img = im2bw(img,.7);
img = crop(img);

pxlThresh = 50;
start = findStart(img,pxlThresh);

modWidth = findSpacing(img,start);

estModules = readModule(img,modWidth,start);

alignedCode = recreate(estModules,modWidth);

%message = translate(

% modCode = readCode(alignedCode,modWidth);





imshow(alignedCode)
