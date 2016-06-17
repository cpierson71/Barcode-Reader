function message = barcode(imgStr)

img = imread(imgStr);
img = im2bw(img,.7);
img = crop(img);

%% Find index of start marker of barcode
pxlThresh = 50;
start = findStart(img,pxlThresh);
s = size(img,1);

% figure
% imshow(img)
% hold on
% plot(start*ones(1,s),1:s,'r')
% hold off

%% Find the module width in pixels
modWidth = findSpacing(img,start);

%% Estimate the value of each module based on the module width
estModules = readModule(img,modWidth,start);

%% Produce a new code with no variation in module width with the estimations
alignedCode = recreate(estModules,modWidth);

% figure
% imshow(alignedCode)

%% Read the code
message = translate(alignedCode);

end
