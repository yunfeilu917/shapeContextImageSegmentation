function mixedMat = computeMixedMat(distanceMat,angleMat)
mixedMat = zeros(size(distanceMat,1),72); %mixedMat should be number of points times feature 
tempMat = zeros(6,6);
for i = 1:size(distanceMat,1)
    for disIndex = 1:6
        vector = find(distanceMat(i,:) == disIndex);
        tempMat(disIndex,1) = size(find(angleMat(1,vector) == 1),2);
        tempMat(disIndex,2) = size(find(angleMat(1,vector) == 2),2);
        tempMat(disIndex,3) = size(find(angleMat(1,vector) == 3),2);
        tempMat(disIndex,4) = size(find(angleMat(1,vector) == 4),2);
        tempMat(disIndex,5) = size(find(angleMat(1,vector) == 5),2);
        tempMat(disIndex,6) = size(find(angleMat(1,vector) == 6),2);
        tempMat(disIndex,7) = size(find(angleMat(1,vector) == 7),2);
        tempMat(disIndex,8) = size(find(angleMat(1,vector) == 8),2);
        tempMat(disIndex,9) = size(find(angleMat(1,vector) == 9),2);
        tempMat(disIndex,10) = size(find(angleMat(1,vector) == 10),2);
        tempMat(disIndex,11) = size(find(angleMat(1,vector) == 11),2);
        tempMat(disIndex,12) = size(find(angleMat(1,vector) == 12),2);
    end
    tempMat1 = tempMat';
    tempMat2 = tempMat1(:);
    mixedMat(i,:) = tempMat2';
end
end


