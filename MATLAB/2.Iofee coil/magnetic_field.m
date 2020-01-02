%%Magnetic Field-Yu-Hao
% in SI
%%constant
m0 = 4*pi*10^-7;
anti = 0;
if anti == 1

    %%Parameters
    R = 0.1; %(m)
    I = 20; %(A)
    d = 0.08; %(m)
    z = -0.04:0.001:0.04;%(m)

    B = zeros(1,81);%declaration
    dB = zeros(1,81);%declaration

    A = m0*I/(2*R); 
    C = 3*m0*I/4/R^3;
    %%Calculation
    for i = 1:81
        B(1,i) = A*((1+(z(1,i)/R-d/(2*R))^2)^(-3/2)-(1+(z(1,i)/R+d/(2*R))^2)^(-3/2));%(T)
        dB(1,i) = C*(-(2*z(1,i)-d)*(1+(z(1,i)/R-d/(2*R))^2)^(-5/2)+(2*z(1,i)+d)*(1+(z(1,i)/R+d/(2*R))^2)^(-5/2));%(T/m)
    end
    %plot(100*z,B*10^4);%cm, G
    %hold on;
    plot(100*z,dB*10^5);%cm, G/cm

else
    %%Parameters
    l = 0.1;
    w = 0.09;
    gamma = sqrt(l^2+w^2);
    I = 20;
    
    xtrue = 0.01;
    ytrue = 0.01;
    Pxy = [xtrue;ytrue];
    
    Btruex = zeros(1,21);
    Btruey = zeros(1,21);
    for z=-1:0.1:1
    i=1;
    Rotation = 1/sqrt(2)*[1,1;-1,1];
    anti_Rotation = 1/sqrt(2)*[1,-1;1,1];
    P = anti_Rotation*Pxy;
    x = P(1,1);
    y = P(2,1);
    R1 = sqrt((x+gamma/2)^2+y^2);
    R2 = sqrt((gamma/2-x)^2+y^2);
    R3 = sqrt(x^2+(gamma/2-y)^2);
    R4 = sqrt(x^2+(gamma/2+y)^2);
    
    B1 = m0*z*I/(2*pi*R1)/sqrt(z^2+R1^2);
    B2 = m0*z*I/(2*pi*R2)/sqrt(z^2+R2^2);
    B3 = m0*z*I/(2*pi*R3)/sqrt(z^2+R3^2);
    B4 = m0*z*I/(2*pi*R4)/sqrt(z^2+R4^2);
    
    the1 = y/(x+gamma/2);
    the2 = y/(gamma/2-x);
    the3 = x/(gamma/2-y);
    the4 = x/(gamma/2+y);
    
    Bx = B1*cos(atan(the1))+B2*cos(1.5*pi-atan(the2))+B3*cos(pi+atan(the3))+B4*cos(2*pi-atan(the4));
    By = B1*sin(atan(the1))+B2*sin(1.5*pi-atan(the2))+B3*sin(pi+atan(the3))+B4*sin(2*pi-atan(the4));
    
    B = [Bx;By];
    
    Btruex(1,i) = Rotation*B(1,1);
    Btruey(1,i) = Rotation*B(2,1);
    i=i+1;
    end
end