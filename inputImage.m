function [mixedMat,labeledData] = inputImage(fileName)

% we need to define how many circles do we need as k
%labeledData = getContour(fileName);
[labeledData] = getTotalImage(fileName);
distanceMat = computeDistanceMat(labeledData(:,1:2));
angleMat = computeAngleMat(labeledData(:,1:2));
mixedMat = computeMixedMat(distanceMat,angleMat);
mixedMat = [mixedMat labeledData(:,3)];
end
