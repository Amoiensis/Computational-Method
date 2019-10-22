%%
% Author: Amoiensis
% Date: 2019.10.22
% Course: Least_Squares(��С���˷�+��ʵ�ֶ���ʽ���)
%%
% import data
clear;clc;
t_n = [19   25  31  38  44];
w_n = [19.0 32.3    49.0    73.3    97.8];
time = 1;   %ʹ����ϵĶ���ʽ����
Size = size(t_n);

% �Ҷ�R����
for i=1:(time+1)
    % �Ҷ�R����
    for j=1:(time+1)
        if (i+j)~=2
            L(i,j)= sum(t_n.^(i+j-2));
        else
            L(i,j) = Size(2) ;
        end
    end
end

% ���L����
for i=1:(time+1)
    % ���L����
    if i~=1
        R(i,:) = sum((t_n.^(i-1)).*w_n);
    else
        R(i,:) = sum(w_n);
    end
end

Coef = inv(L)*R;
%%
% Plot
plot (t_n,w_n,'r*');
x = min(t_n):0.01:max(t_n);
for i=1:(time+1)
    % ���L����
    X(i,:) = x.^(i-1);
end
hold on;
fit_y = (Coef')*X;
plot (x,fit_y,'r');
title('������Ͻ��');
xlabel('x');
ylabel('liner_y');
%%
% Caculate Gap
for i=1:(time+1)
    % ���L����
    T_n(i,:) = t_n.^(i-1);
end
fit_w_value  = (Coef')*T_n;
abs_gap = abs(fit_w_value - w_n);
[abs_gap_max] = max(abs_gap);
disp('abs_gap_max');
disp(abs_gap_max);
ave_square_gap = sum(abs_gap.^2)/Size(2);
disp('ave_square_gap');
disp(ave_square_gap);
