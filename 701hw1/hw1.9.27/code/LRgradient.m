function [ grad ] = LRgradient( X, y, w )
    % Filler code, replace with your own.
    f = size(X,2);
    grad = zeros(f,1);
    numData = size(X,1);
    for i=1:f,
      for j=1:numData,
        p1 = exp(X(j,:) * w) / (1+ exp(X(j,:) * w) ) ;
        grad(i) += X(j,i) * ( y(j) - p1 ) ;
      end;
    end;
end
