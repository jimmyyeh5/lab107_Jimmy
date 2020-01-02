function dBdz = B(z,I,a,d)%(G)
m0 = 4*pi*10^-7;
%dBdz = m0*I/(2*a)*((1+(z/a-d/2*a)^2)^(-3/2)-(1+(z/a+d/(2*a))^2)^(-3/2))*10000;
alpha = 2*z/a;
beta = d/(2*a);
lambda = I/(2*a*pi);
dBdz = m0*pi*lambda*((1+(alpha/2-beta)^2)^(-3/2)-(1+(alpha/2+beta)^2)^(-3/2));
end