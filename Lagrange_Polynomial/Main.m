%%
% Author: Amoiensis
% Email:Amoiensis@outlook.com
% Date: 2019.10.08
% Homework 10.08
% Course: Computational Method
%%
% import data 
k =3;      %Coef for the function.（函数的k值）
TEMP = 10:10; % The node num.(选择插值点的个数)
% for k = 3:10
    for node_num=TEMP
        DETA (k,node_num) = LaGrange_Interpolation (k,node_num,2);  %(Deta为差值的记录,Plot:2-画在一起//1-单独画//0-不画)
    end
    figure();
    plot(TEMP,DETA(k,TEMP),'y');
    [~,I] = min(DETA(k,:)); % find the min index of deta.(找到最小的误差差值deta)
    disp("Best-fit:");
    disp(I);
% end
