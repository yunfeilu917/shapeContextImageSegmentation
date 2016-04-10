function [labeledData] = getContour(fileName)
image = imread(fileName);
image = padarray(image,[1 1]);
contour = [];
label = [];
for i = 2:size(image,1)-1
    for j = 2:size(image,2)-1
        if(image(i,j))
         if(~((image(i-1,j) && image(i-1,j-1)&&image(i-1,j+1)&&image(i,j+1))&&image(i,j-1)&&image(i+1,j+1)&&image(i+1,j-1)&&image(i+1,j))) 
             contour = [contour;i-1 j-1];
             label = [label;image(i,j)];
         end
        end
    end
end
plot(contour(:,1),contour(:,2),'.');
labeledData = [contour label];

end