%%
% Author: Amoiensis
% Email:Amoiensis@outlook.com
% Date: 2019.10.08
% Homework 10.08
% Course: Computational Method
%%
% import data 
k =3;      %Coef for the function.��������kֵ��
TEMP = 10:10; % The node num.(ѡ���ֵ��ĸ���)
% for k = 3:10
    for node_num=TEMP
        DETA (k,node_num) = LaGrange_Interpolation (k,node_num,2);  %(DetaΪ��ֵ�ļ�¼,Plot:2-����һ��//1-������//0-����)
    end
    figure();
    plot(TEMP,DETA(k,TEMP),'y');
    [~,I] = min(DETA(k,:)); % find the min index of deta.(�ҵ���С������ֵdeta)
    disp("Best-fit:");
    disp(I);
% end
