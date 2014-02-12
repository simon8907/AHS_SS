function [xi_1_dot, xi_dot, xi_1] = AHS_Data(N)
common_case = 0.75;
extreme_case = 0.9;
probability = rand(1,1);
if (probability <common_case) 
    xi_1_dot = 20+22*rand(N,1);
    xi_dot = 20+22*rand(N,1);
    xi_1 = 200*rand(N,1);
    disp('Common Case')
elseif (probability > common_case && probability < extreme_case)
    xi_1_dot = 45*rand(N,1);
    xi_dot = 45*rand(N,1);
    xi_1 = 300*rand(N,1);
    disp('Uncommon Case')
else 
    xi_1_dot = 60*rand(N,1);
    xi_dot = 60*rand(N,1);
    xi_1 = 10*rand(N,1);
    disp('Extreme Case')
end