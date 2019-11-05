% Romberg quadrature formula(Áú±´¸ñ·½·¨)
%%
% Author: Amoiensis
% Email: Amoiensis@outlook.com
% Date: 2019.11.05
% Course: Computationlal Method
% Method: Romberg quadrature formula
%%
% import setting
Lower_Limit = 0;
Upper_Limit = 1;
LEVEL_num = 5;  %Romberg level num

% initial data
Store_T = nan(LEVEL_num,LEVEL_num-1);
Store_T(1,1) = (Upper_Limit-Lower_Limit)*(function_(Lower_Limit)+function_(Upper_Limit))/2;

% iteration operation
Size_Store_T = size(Store_T);
for i=2:Size_Store_T(1)
    for j=1:Size_Store_T(1)
        if j == 1
            temp_sum = 0;
            for k=1:(2^(i-2))
                temp_sum = temp_sum + function_(Lower_Limit + (2*k-1)*(Upper_Limit-Lower_Limit)/(2^(i-1)));
            end
            Store_T(i,j) = Store_T(i-1,j)/2 + (Upper_Limit-Lower_Limit)*temp_sum/(2^(i-1));
        else
            Store_T(i,j) = ((4^(j-1))*Store_T(i,j-1)-Store_T(i-1,j-1))/(4^(j-1)-1);
        end
    end
end