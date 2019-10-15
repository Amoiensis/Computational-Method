%%
% Author: Amoiensis
% Date: 2019.10.15
% Homework 10.15
% Experiment: #2 -- fit w=c*t^lamda
%%
% import data
% w=c*t^lamda
t = [1 2 4 8 16 32 64];
w = [4.22 4.02 3.85 3.59 3.44 3.02 2.59];
% 用于线性拟合的变量取值
t_n = log(t);%[36.9 46.7 63.7 77.8 84.0 87.5];
w_n = log(w);%[181 197 235 270 283 292];
Size = size(t_n);

L = [...
    Size(2) sum(t_n);...
    sum(t_n) sum(t_n.^2);...
    ];
R = [...
    sum(w_n);
    sum(w_n.*t_n);
    ];
Coef = (L)^(-1)*R;
%%
%Plot Liner
plot (t_n,w_n,'r*');
x = 1:0.01:7;
hold on;
fit_y = x.*Coef(2)+Coef(1);
plot (x,fit_y);
title('线性拟合结果');
xlabel('x');
ylabel('liner_y');

%Plot origin
figure();
plot (t,w,'r*');
x = 1:0.01:5;
fit_y = exp(x.*Coef(2)+Coef(1));
hold on;
plot (exp(x),fit_y);
title('原函数拟合结果');
xlabel('x');
ylabel('y');