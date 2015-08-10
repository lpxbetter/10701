function [ mu, sigma ] = NBparameters( X, y )
    % mu matrix
    %      mean-f1  mean-f2 ...  
    %cls1                        
    %cls2
    % var matrix
    %      var-f1  var-f2 ...  
    %cls1                        
    %cls2
    numFeat = size(X,2);
    numData = size(X,1);
    numClass = max(y);
    
    mu = zeros(numClass,numFeat);
    sigma = zeros(numClass,numFeat);
    % Matric of training data and their class
    %dataCls = [X y]
    % Calculate the mean and variance of each feature given a class
    for f=1:numFeat, 
            for c=1:numClass,
                    % Caculate the mean
                    cntSameCls = 0 ;
                    sumSameCls = 0 ;
                    sumSqu = 0; % Sum of the square error
                    for j=1:numData,
                      indicator = c == y(j); % Belongs to class,set to 1, otherwise 0
                      cntSameCls += indicator; % If belongs to the c class, then add to cnt 
                      sumSameCls += X(j,f)*indicator;
                    end;
                    mu(c,f)= sumSameCls/cntSameCls;
                    % Caculate the variance 
                    for j=1:numData,
                      indicator = c == y(j); % Belongs to class,set to 1, otherwise 0
                      sumSqu += indicator*  ( X(j,f)- mu(c,f)).^2; 
                    end;
                    sigma(c,f)= sumSqu / cntSameCls;
            end;
    end;
