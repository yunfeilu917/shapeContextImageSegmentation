function [trainData,testData]=randomChooseData(totalImage, n)
rand_indices = randperm(size(totalImage,1));
trainData = totalImage(rand_indices(1:n),:);
testData = totalImage(rand_indices(n+1:end),:);
end