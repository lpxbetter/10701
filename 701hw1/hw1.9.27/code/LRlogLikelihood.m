function [ logl ] = LRlogLikelihood( X, y, w )
    logl = 0;    
    numData = size(X,1);
    for j=1:numData,
            logl += y(j) * (X(j,:)*w) - log(1 + exp(X(j,:)*w) );
    end;
