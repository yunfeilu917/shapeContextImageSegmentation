function distanceMat = computeDistanceMat(contour)
%%
%if I have n points, then for each points, the distanceMat will be n by n
contour = double(contour);
k = 6;
distanceMat = ones(size(contour,1),size(contour,1)); 
%%
%First, get the distance between two points, and then normalization by
%dividing meanDistance.
for i = 1:size(contour,1)
    for j = 1:size(contour,1)
        distanceMat(i,j) = sqrt((contour(i,1) - contour(j,1))^2 + (contour(i,2) - contour(j,2))^2);
    end
end

meanDistance = sum(sum(distanceMat))/(size(contour,1)^2);
distanceMat = distanceMat/meanDistance;

%%
%get the distance array, from highest to highest/(2^k)
maxDistance = ceil(max(distanceMat(:)));
tempDistance = maxDistance;
distance = ones(1,k);
for i = 1: k
    distance(i) = tempDistance;
    tempDistance = distance(i)/2;
end
%%
%get the distance matrix
for i = 1:size(contour,1)
    for j = 1:size(contour,1)
        if distanceMat(i,j) >= distance(2)
            distanceMat(i,j) = 1;
        elseif distanceMat(i,j) >= distance(3) && distanceMat(i,j) < distance(2)
            distanceMat(i,j) = 2;
        elseif distanceMat(i,j) >= distance(4) && distanceMat(i,j) < distance(3)
            distanceMat(i,j) = 3; 
        elseif distanceMat(i,j) >= distance(5) && distanceMat(i,j) < distance(4)
            distanceMat(i,j) = 4; 
        elseif distanceMat(i,j) >= distance(6) && distanceMat(i,j) < distance(5)
            distanceMat(i,j) = 5;
        else
            distanceMat(i,j) = 6;
        end
    end
end
end