function [ mi ] = ComputeMI( i, j, fUV )
%   Calculate Mutual Information
    nStates = size(fUV,1);
    mi = 0;
    sumRow = sum(fUV(:, :, i, j), 2);
    sumCol = sum(fUV(:, :, i, j));
    for x=1:nStates
        for y=1:nStates
            logProd = 0;
            den = sumRow(x) * sumCol(y);
            if(den ~= 0)
                logProd = log(fUV(x, y, i ,j)/den);
            end
            
            mi = mi + fUV(x, y, i, j) * logProd;
        end
    end
end

