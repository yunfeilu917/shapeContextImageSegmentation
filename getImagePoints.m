function X = getImagePoints(imagePath)
X = [];
image = imread(imagePath);
% for i = size(image,1)
%     for j = size(image,2)
%         if 
%     end
% end
[row,col] = find(image);
X = [row col];
plot(X(:,1),X(:,2),'.');
end