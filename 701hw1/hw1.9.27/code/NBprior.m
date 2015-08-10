function [ priorArr ] = NBprior( y )
    % Filler code, replace with your own.
    clsArr = unique(y); % Array of classes
    sizeCls = size(clsArr,1); % size of the class array
    cntCls = zeros(sizeCls,1); % count the number of each class 
    for i = 1:size(y,1),
            cntCls( y(i) )++; 
    end;
    %cntCls
    priorArr = zeros(sizeCls,1); 
    for i = 1: sizeCls,
       priorArr(i) = cntCls(i)/size(y,1);
    end;

end

