function [ grad ] = mLRgradient( X, y, W )
    % Filler code, replace with your own.
    f = size(X,2);
    numClass = max(y);
    grad = zeros(numClass,f); % grad is now a matrix
end