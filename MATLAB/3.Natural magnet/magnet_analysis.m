%% Jimmy_Magnetic field distribution @20191006 IAMS, lab107
close all;

x = -0.5:0.1:0.5;
y = -0.5:0.1:0.5;

[xx, yy] = meshgrid(x,y);

%% plot
figure
mesh(xx,yy,Bx);
title('B-field in x direction','FontSize',20)
xlabel('x-axis','FontSize', 20)
ylabel('y-axis','FontSize', 20)
zlabel('Bx (Gauss)','FontSize', 20)

figure
mesh(xx,yy,By);
title('B-field in y direction','FontSize',20)
xlabel('y(cm)','FontSize', 20)
ylabel('x(cm)','FontSize', 20)
zlabel('By (Gauss)','FontSize', 20)

figure
mesh(xx,yy,Bz);
title('B-field in z direction','FontSize',20)
xlabel('x-axis','FontSize', 20)
ylabel('y-axis','FontSize', 20)
zlabel('Bz (Gauss)','FontSize', 20)

%%
%Bpx = zeros(11);
%Bpz = zeros(11);
%Bpy = zeros(11);
%for i = 1:11
%    for j=1:11
%        Bpx(12-j,i) = Bx(i,j);
%        Bpy(12-j,i) = By(i,j);
%        Bpz(12-j,i) = Bz(i,j);
%    end
%end