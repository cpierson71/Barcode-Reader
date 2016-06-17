message = [];
count = 0;
digitLength = 7;
middleLength = 5;

modCode = alignedCode(1,:);
modCode = modCode(4:end-3); %Trim start and end markers
N = length(modCode);

idx = findMiddleMarker(modCode);
minIdxDiff = N+1;
midIdx = 0;
for k = 1:length(idx)
    idxDiff = abs(idx(k)-(N/2)-middleLength);
    if idxDiff < minIdxDiff
        minIdxDiff = idxDiff;
        midIdx = idx(k);
    end
end

% Remove spaces from string
for k = 1:length(modCode)
    numStr = num2str(modCode);
    for j = length(numStr):-1:1
        if (numStr(j) == ' ')
            numStr(j) = [];
        end
    end
end

%%
% Left numerical digits
for k = 1:midIdx/digitLength
    count = count + 1;
    switch numStr(digitLength*(k-1)+1:digitLength*(k-1) + digitLength)
        case '1110010'
            message(count) = 0;
        case '1100110'
            message(count) = 1;
        case '1101100'
            message(count) = 2;
        case '1000010'
            message(count) = 3;
        case '1011100'
            message(count) = 4;
        case '1001110'
            message(count) = 5;
        case '1010000'
            message(count) = 6;
        case '1000100'
            message(count) = 7;
        case '1001000'
            message(count) = 8;
        case '1110100'
            message(count) = 9;
        otherwise
            message(count) = NaN;
    end
    k
end

%%
count = 0;
% Right numerical digit
for k = midIdx+4:length(modCode)
    count = count + 1;
    switch numStr(digitLength*(k-1)+1:digitLength*(k-1) + digitLength)
        case '0001101'
            message(count) = 0;
        case '0011001'
            message(count) = 1;
        case '0010011'
            message(count) = 2;
        case '0111101'
            message(count) = 3;
        case '0100011'
            message(count) = 4;
        case '0110001'
            message(count) = 5;
        case '0101111'
            message(count) = 6;
        case '0111011'
            message(count) = 7;
        case '0110111'
            message(count) = 8;
        case '0001011'
            message(count) = 9;
        otherwise
            message(count) = NaN;
    end
end