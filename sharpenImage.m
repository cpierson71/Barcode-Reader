function sharpImg = sharpenImage(img)

img = imread('pkg1.jpg');

img = rgb2gray(img);
b = imsharpen(img,'Radius',2,'Amount',1.9);
J = wiener2(b,[3 3]);

end