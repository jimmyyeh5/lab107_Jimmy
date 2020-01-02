%%Magnetic Field-Yu-Hao
% in SI unit

function [B_vertical, B_horizontal] = field(a,b,x,y,I)
%% constant
m_0 = 4*pi*10^-7;


%% Amplitude
C = m_0*I/pi;

%%
alpha_1 = a+2*x;
alpha_2 = a-2*x;
beta_1 = b+2*y;
beta_2 = b-2*y;

delta2_2 = triangle(alpha_2,beta_2);
delta1_2 = triangle(alpha_1,beta_2);
delta1_1 = triangle(alpha_1,beta_1);
delta2_1 = triangle(alpha_2,beta_1);

T2_2 = theta(beta_2/alpha_2);
T1_2 = theta(beta_2/alpha_1);
T2_1 = theta(beta_1/alpha_2);
T1_1 = theta(beta_1/alpha_1);


B_vertical = C*(-delta2_2*cos(T2_2)+delta2_1*cos(T2_1)-delta1_2*cos(T1_2)+delta1_1*cos(T1_1));
B_horizontal = C*(delta2_2*sin(T2_2)+delta2_1*sin(T2_1)-delta1_2*sin(T1_2)-delta1_1*sin(T1_1));
end

