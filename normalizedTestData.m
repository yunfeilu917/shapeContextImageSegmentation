function normalizedTestData = normalizedTestData(maxData,minData,testData)
diff = maxData - minData;
normalizedTestData = testData;
for i = 1:size(testData,2)-1
    if diff(:,i) == 0
        continue;
    else
        normalizedTestData(:,i) = (testData(:,i)- minData(1,i))/(diff(:,i));
    end
end
end