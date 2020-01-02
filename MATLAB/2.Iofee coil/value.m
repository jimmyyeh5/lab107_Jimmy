%% Magnetic Field_Yu-Hao Yeh
close all;
%% in SI unit
%% Local or global
L = 1;
%% Geometry
a = 0.05;
b = 0.05;

%% Current
I = 10;
N = 20;
It = I*N;

resolution = 0.001;%% meter

%% round
ni = a/resolution;
nj = b/resolution;

B_V = zeros(nj,ni);
B_H = zeros(nj,ni);

%% calculation
for i = 1:ni
    for j = 1:nj
        [B_V(j,i),B_H(j,i)]= field(a,b,-a/2+resolution*(i-1),-b/2+resolution*(j-1),It);
    end
end

B = sqrt(B_V.^2+B_H.^2);

%% plot
if L == 1 
    %Local = B_H(ni/2-20:ni/2+20,nj/2-20:nj/2+20);
    %Local = B(ni/2-20:ni/2+20,nj/2-20:nj/2+20);
    Local = B_H(ni/2-20:ni/2+20,nj/2-20:nj/2+20);
    x = linspace(-2, 2, 41);		
    y = linspace(-2, 2, 41);
    [xx,yy] = meshgrid(x, y);
    %surf(xx, yy, Local*10^4)
    figure
    mesh(xx,yy,Local*10^4)
    title('B-field in y direction','FontSize',20)
    xlabel('y-axis(cm)','FontSize', 20)
    ylabel('x-axis(cm)','FontSize', 20)
    zlabel('By (Gauss)','FontSize', 20)
else
    x = linspace(-a/2*100, a/2*100, a/resolution);	
    y = linspace(-b/2*100, b/2*100, b/resolution);	
    [xx,yy] = meshgrid(x, y);
    surf(xx, yy, B*10^4)
end