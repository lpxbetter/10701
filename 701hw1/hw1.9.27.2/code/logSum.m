function [ sumX ] = logSum( X )
    maxLogp = max(X);
    sumX = maxLogp + log( sum(exp(X - maxLogp ) )) ;  
end

