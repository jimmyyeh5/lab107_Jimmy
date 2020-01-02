function dBdz = dB(z,I,a,d)%(G/cm)
m0 = 4*pi*10^-7;
dBdz2 = 1.5*m0*I/a^3*  (1+(z/a+d/(2*a))^2)^(-2/5)*(z+d/2)*100;
dBdz1 = -1.5*m0*I/a^3* (1+(z/a-d/(2*a))^2)^(-2/5)*(z-d/2)*100;
dBdz = dBdz1+dBdz2;
end