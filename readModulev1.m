function condensedMod = readModule(img,idx,modWidth)
condensedMod = 0;

module = img(2,idx:idx+modWidth-1);

avg = mean(module);
if avg >= .5
   condensedMod = 1; 
end

end