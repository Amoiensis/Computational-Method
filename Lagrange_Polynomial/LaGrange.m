%%
% Author: Amoiensis
% Email:Amoiensis@outlook.com
% Date: 2019.10.08
% Homework 10.08
% Course: Computational Method
%%
function [y] = LaGrange(X,Y,position)
%Give accurate X<Vector>,Y<Vector> and position<scalar> value, and return the LaGrange_Fuction(positon)<scalsr> value.
% 输入用于拟合的 X、Y值（向量）和 待估计点的值，返回该点拉格朗日插值法估计值。
size_X = size(X);
y = 0;

for i=1:(size_X(2))
    temp = 1;
    for j=1:(size_X(2))
        if j ~= i
           temp = ((position-X(j))/(X(i)-X(j)))*temp;
        end
    end
    y = y + Y(i)*temp;
end
end

