function [ mu, sigma ] = NBparameters( X, y )
    % Filler code, replace with your own.
    numFeat = size(X,2);
    numClass = max(y);
    mu = zeros(numClass,numFeat);
    sigma = zeros(numClass,numFeat);
end

