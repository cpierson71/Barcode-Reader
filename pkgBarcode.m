% function message = pkgBarcode(imgStr)
imgStr = 'pkg1.jpg';
img = imread(imgStr);
img = rgb2gray(img);

[bounds,C] = findBarcode(img);

minC = bounds(1);
maxC = bounds(2);
minR = bounds(3);
maxR = bounds(4);

width = maxC-minC;
height = maxR-minR;

imgCrop = imcrop(img,[minC minR width height]);


%%
level = graythresh(imgCrop);
imgCropBW = im2bw(imgCrop,level);
imgCropBW = trim(imgCropBW);


imshow(imgCropBW)

%% Find index of start marker of barcode
pxlThresh = 50;
start = findStart(img,pxlThresh);

%% Find the module width in pixels
modWidth = findSpacing(img,start);

%% Estimate the value of each module based on the module width
estModules = readModule(img,modWidth,start);

%% Produce a new code with no variation in module width with the estimations
alignedCode = recreate(estModules,modWidth);

%% Read the code
message = translate(alignedCode);

% end
