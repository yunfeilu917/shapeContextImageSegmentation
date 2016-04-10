function angleMat = computeAngleMat(contour)
contour = double(contour);
n = 12;
angleMat = zeros(size(contour,1),size(contour,1));
for i = 1: size(contour,1)
    for j = 1:size(contour,1) 
        angleMat(i,j) = abs(atan((contour(j,2) - contour(i,2))/((contour(j,1) - contour(i,1)))));
        if contour(j,2) >= contour(i,2) && contour(j,1) > contour(i,1)
            angleMat(i,j) = angleMat(i,j);
            angleMat(i,j) = 1 + floor(angleMat(i,j) * n/(2*pi));
        elseif contour(j,2) > contour(i,2) && contour(j,1) <= contour(i,1)
            angleMat(i,j) = pi - angleMat(i,j);
            angleMat(i,j) = 1 + floor(angleMat(i,j) * n/(2*pi));
        elseif contour(j,2) <= contour(i,2) && contour(j,1) < contour(i,1)
            angleMat(i,j) = pi + angleMat(i,j);
            angleMat(i,j) = 1 + floor(angleMat(i,j) * n/(2*pi));
        elseif contour(j,2) == contour(i,2) && contour(j,1) == contour(i,1)
            angleMat(i,j) = 0;
            angleMat(i,j) = 1 + floor(angleMat(i,j) * n/(2*pi));
        else
            angleMat(i,j) = 2*pi - angleMat(i,j);
            angleMat(i,j) = 1 + floor(angleMat(i,j) * n/(2*pi));
        end
    end
end

end