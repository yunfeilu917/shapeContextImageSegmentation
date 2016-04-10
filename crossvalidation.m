function[trainData,testData,labeledPosition_train,labeledPosition_test,testImageIndex,trainImageIndex,maxData,minData]  = crossvalidation(k)
numTestImage = floor(224/k);
rand_indices = randperm(224);
testImageIndex = rand_indices(numTestImage + 1:end);
trainImageIndex = rand_indices(1:numTestImage);
trainData = [];
testData = [];
labeledPosition_train = [];
labeledPosition_test = [];
for i = rand_indices(1:numTestImage)
    imageName = ['Label/' num2str(i+1) '.png'];
    [mixedMat,labeledData] = inputImage(imageName);
    testData = [testData;mixedMat];
    labeledPosition_train = [labeledPosition_train;labeledData];
end
for i = rand_indices(numTestImage+1:end)
    imageName = ['Label/' num2str(i+1) '.png'];
    [mixedMat,labeledData] = inputImage(imageName);
    trainData = [trainData;mixedMat];
    labeledPosition_test = [labeledPosition_test;labeledData];

end
trainData = double(trainData);
testData = double(testData);
[trainData,maxData,minData] = normalization(trainData);
testData = normalizedTestData(maxData,minData,testData);


end