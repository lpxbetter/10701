function [ logl ] = mLRlogLikelihood( X, y, W )
    % Filler code, replace with your own.
    logl = 0;
    numData = size(X,1);
    numClass = max(y);
    % 
    for j=1:numData,
            oneP = 0;
            for k=1:numClass,
             indiPart = (y(j)==k) * W(k,:) * X(j,:)' 
             expPart = 0;
             for c=1:numClass,
                expPart += exp(W(c,:) * X(j,:)' )
             end;
             logPart = log( expPart )
             oneP += indiPart - logPart ;

            end;
    end;
end
