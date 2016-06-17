function newRow = recreate(estModules,modWidth)

estModules = round(estModules);

height = 200;
newRow = ones(height,sum(estModules));
count = 1;
for k = 1:length(estModules)
    if mod(k,2) == 1
        for j = 1:estModules(k)
            newRow(1:height,count) = 1;
            count = count + 1;
        end
    else
        for j = 1:estModules(k)
            newRow(1:height,count) = 0;
            count = count + 1;
        end
    end
end

end