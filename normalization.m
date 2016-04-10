function [normalizedTrainData,maxData,minData] = normalization(trainData)
maxData = max(trainData);
minData = min(trainData);
diff = maxData - minData;
normalizedTrainData = trainData;
for i = 1:size(trainData,2)-1
    if diff(:,i) == 0
        continue;
    else
        normalizedTrainData(:,i) = (trainData(:,i)- minData(1,i))/(diff(:,i));
    end
end
end