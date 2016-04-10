function [labeledData] = getTotalImage(fileName)
image = imread(fileName);
image = double(image);
label = [];
labeledData = [];

for i = 1:size(image,1)
    for j = 1:size(image,2)
        if(image(i,j))
            labeledData = [labeledData;i j];
            label = [label;image(i,j)];
        end
    end
end
labeledData = [labeledData label];
plot(labeledData(:,1),labeledData(:,2),'.');


            

end