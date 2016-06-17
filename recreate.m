function newRow = recreate(estModules,modWidth)

for k = 1:length(estModules)
    switch mod(estModules(k)*modWidth,modWidth)
        case 1
            estModules(k) = estModules(k) - .25;
        case 2
            estModules(k) = estModules(k) - .5;
        case 3
            estModules(k) = estModules(k) + .25;
        otherwise
    end
end

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