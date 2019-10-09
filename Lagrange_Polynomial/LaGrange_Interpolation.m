%%
% Author: Amoiensis
% Email:Amoiensis@outlook.com
% Date: 2019.10.08
% Homework 10.08
% Course: Computational Method
%%
function [DETA] = LaGrange_Interpolation (k,node_num,Plot)
	%%
	% Coef Annotation
	% Use to plot LaGrange-function and return the inaccuracy(Error).
	% k --- f(x)=abs(sin(x.*(pi*k)))
	% node_nmu --- The Node num of LaGrange Interpolation Ploynomial.
 	% Plot --- 0-without Plotting //2-different picture plot on different figure //2- All plot on one Picture.
 	% DETA --- the sum of the gap between fit values and accurate values on all the nodes which we polt. 
 	%%
    % operation

    % plot origin figure
    head = 0;
    tail = 1;
    gap = (tail-head)/(node_num);  %n为差值点的数目
    x = head:gap:tail;   %生成等距
    y_f = abs(sin(x.*(pi*k))); %生成原函数值
    if Plot ~= 0
        if Plot ==1
            figure();
        else
            hold on;
            plot(x,y_f,'r*');
        end
    end

    % LaGrange
    position = head:0.001:tail;
    y_p = abs(sin(position.*(pi*k)));
    Size_P = size(position);
    value = zeros(1,Size_P(2));

    for i=1:Size_P(2)
        value(i) = LaGrange(x,y_f,position(i));
    end
    
    if Plot ~= 0
        hold on;
        plot(position,value,'g');
        hold on;
        plot(position,y_p,'b');
    end

    
    DETA = 0;
    for i=1:Size_P(2)
        DETA = DETA + abs(value(i) - y_p(i));
    end
        
end