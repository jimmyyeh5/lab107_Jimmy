clear; clc;
a = 7*0.01;%(m)
d = 9*0.01;%(m)
I = 120;%(A)
Bk = zeros(1,201);
z = -0.1:0.001:0.1;%(m)

for i = 1:201
    Bk(1,i) = B(z(1,i),I,a,d);
    
end

plot(100*z,Bk)