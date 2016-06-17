digitLength = 7;
count = 0;
x = [];

for k = 1:length(modCode)
    j = floor(k/digitLength)+1;
    x(j,mod(k,7)+1) = modCode(k);
        
end

% for k = 1:digitLength:length(modCode)-digitLength+1
%     count = count+1;
%     x(count,k
% end