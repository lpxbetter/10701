function [ grad ] = mLRgradient( X, y, W )
    % Filler code, replace with your own.
    f = size(X,2);
    numData = size(X,1);
    numClass = max(y) ;
    %grad = zeros(numClass,f); % grad is now a matrix
    grad=[];

    for c=1:numClass,
            gradOneCls = zeros(1,f);
            for j=1:numData,
              p = mLRprob( X(j,:),W );
              indi = y(j) == c ;
              gradOneCls += (X(j,:) * ( indi - p(c) )) ;
            end;
    % add the Wc grad to the grad
    grad = [grad; gradOneCls];
    end;

end
