function [ probs ] = NBprior( y )
    % Filler code, replace with your own.
    c = max(y);
    probs = ones(c,1);
    probs = probs/sum(probs);
end

