function idx = findMiddleMarker(modCode)

modStr = num2str(modCode);
for j = length(modStr):-1:1
    if (modStr(j) == ' ')
        modStr(j) = [];
    end
end

idx = regexp(modStr,'10101');

%imshow(alignedCode), hold on, plot(idx(2),1:length(alignedCode),'r')

end