function [ classPred ] = NBclassify( XTrain, XTest, yTrain )
    numTest = size(XTest,1);
    classPred = zeros(numTest, 1);
    numFeat = size(XTrain,2);
    numClass = max(yTrain);
    prior = NBprior(yTrain)
    [mu,sigma] = NBparameters(XTrain, yTrain)

    tmpProb=zeros(numClass, 1);
    %likeLhlog ;
    likeLh = zeros(numFeat,1)

    for i=1:numTest,
            for c=1:numClass,
                    c
                    % Likelihood
                    for j=1:numFeat,
                      j
                      muTmp = mu(c,j)
                      sigmaTmp = sigma(c,j)
                      expPart = exp(-(XTest(i,j)-muTmp).^2/(2*sigmaTmp))
                      %likeLhLog = log(1/(sqrt(2*pi*sigmaTmp) ) * expPart )
                      likeLh(j) = log(1/(sqrt(2*pi*sigmaTmp) ) * expPart )
                      %likeLh(j) = likeLhlog
                      %likeLh(j) = 2
                      likeLh(j)
                    end;
                    likeLhVal  = sum( likeLh )
                    tmpProb(c) = likeLhVal * prior(c) 
            end;
            [maxProb,classPred(i)] = max(tmpProb)
            classPred(i)
    end;



