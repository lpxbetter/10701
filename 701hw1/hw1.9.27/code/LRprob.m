function [ p ] = LRprob( x, w )
    p = zeros(2,1);
    sigm = 1 / (1 + exp(x*w));
    p(1) = sigm;
    p(2) = 1 - sigm;
    %sigm = x*y

    %{
    if sigm > 0 ,
      p = [0.5; 0.5];
    else
      p = [0.5; 0.5];
    end;
    %}
end
