function [ p ] = mLRprob( x, W )
    % Filler code, replace with your own.
    % x: 1*f , W:c*f
    c = size(W,1);
    p = ones(c,1);
    xT = x';
    p = exp(W*xT);
    p = p / sum(p);
end
