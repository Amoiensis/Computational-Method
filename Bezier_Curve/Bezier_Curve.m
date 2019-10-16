%%
% Author: Amoiensis
% Date: 2019.10.15
% Homework 10.15
% Experiment: #9 -- Bezier Curve
%%
% import data
% (given Point)
x = [0.1,0.5,0.75];
y = [100,60,70];
%%
% Operation
% Èý´Îº¯Êý£º y=ax^3+bx^2+cx+d
% solve a,b,c
L = [...
    0 0 0 1;
    1 1 1 1;
    0 0 1 0;
    3 2 1 0;...
    ];
R = [...
    y(1);
    y(3);
    2*(y(2)-y(1));
    2*(y(3)-y(1));
    ];

Coef = inv(L)*R;

x_curve = 0:0.01:1;
y_curve = (x_curve.^3).*Coef(1)+(x_curve.^2).*Coef(2)+(x_curve).*Coef(3)+Coef(4);
%%
%Plot Bezier Curve
plot(x,y,'r*');
hold on;

plot (x_curve,y_curve);
title('Bezier Curve');
xlabel('x');
ylabel('y');