function [ K ] = RBF( X )
%RBF Summary of this function goes here
%   Detailed explanation goes here
[n,m] = size(X);
K = zeros(n,n);
theta = 5;
for i = 1:n
    for j = 1:n
        K(i,j) = exp(-(((X(i,1)-X(j,1))^2 + (X(i,2)-X(j,2))^2)/(2*theta^2)));
    
end

end

