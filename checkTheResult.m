function image = checkTheResult(image,labeledData,predict)
for i = 1:3088
    image(labeledData(i,1),labeledData(i,2)) = predict(i);
end
end