clc;
clear;

pkg load control;

%z = [0.4943 0.8825];
%p = [0.3679 1  0.998];
%k = 0.012863;
%gsys = zpk(z, p, k);

gnum = [250];
gdem = [0.1 1 0];
gsys = tf(gnum, gdem);

zsys = c2d(gsys, 0.1, 'zoh');
K = margin(zsys);

dnum = [0.8 1];
ddem = [50 1];
dsys =tf(dnum, ddem);
dzsys = c2d(dsys, 0.1, 'zoh');

zzsys = zsys*(dzsys/0.016);

%x = -1:0.1:1;
%y = sqrt(1/2-x.^2);
%plot(x,y), hold;
theta = linspace(0,pi,1000);
DF = 0.0295/sqrt(1-0.0295^2);
x = exp(-theta*DF).*cos(theta);
y = exp(-theta*DF).*sin(theta);
%plot(x,y), hold on;
%rlocus(zzsys);

step((0.14512*zzsys));


