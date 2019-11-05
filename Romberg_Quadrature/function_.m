function [ y ] = function_( x )
%function_ ´ý»ý·Öº¯Êý__f(x)=sin(x)/x
% Author: Amoiensis
% Email: Amoiensis@outlook.com
% Date: 2019.11.05
% Course: Computationlal Method
% Method: Romberg quadrature formula
%%
if x~=0
    f=@(x)(sin(x)/x);
    y = f(x);
else
    y = 1;
end
end

