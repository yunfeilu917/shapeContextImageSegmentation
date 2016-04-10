function [partOfBody] =  matForPartOfBody(totalMat,k)
partOfBody = totalMat;
for i = 1:size(totalMat,1)
    if partOfBody(i,size(totalMat,2)) ~= k
        partOfBody(i,size(totalMat,2)) = 0;
    else
        partOfBody(i,size(totalMat,2)) = 1;
    end
end
end