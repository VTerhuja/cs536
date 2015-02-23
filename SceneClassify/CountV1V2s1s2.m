function [ nuv ] = CountV1V2s1s2( v1, v2, nStates, samples)
% Count # samples with V1 = s1 and V2 = s2
    % Combination of states
    nuv = zeros(nStates);
    for s1=0:nStates-1
        for s2=0:nStates-1
            nuv(s1+1,s2+1) = length(find(samples(v1,:) == s1 & samples(v2,:) == s2));
        end
    end
end

