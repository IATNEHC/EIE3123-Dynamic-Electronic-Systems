clc;
clear;

pkg load control;

%gnum = [1 1.5];             
%gden = [1 11 10 0];    % (s + 1.5)/(s^3 + 11s^2 + 10s + 0)
%gsys = tf(gnum, gden);

%z = [-8 -55.92];
%p = [ -3 -6 -10];
%k = 1;
%gsys = zpk(z, p, k);    % s-z or s-p


%K = margin(gsys);       %maximum gain of the g(s)

%x = linspace(-50,0);
%y = -tan(acos(0.456))*x;
%plot(x,y), hold;
%rlocus(gsys);
%step(gsys/(1+gsys));
  
%s = tf('s');
%zsys = 0.1*((s-1)/s)*(((100*s)/(s+1.01005))-((100*s)/(s-1))+((10*s)/((s-1)*(s-1))));

%zsys = c2d(gsys, 0.1);          % plotting z-system change gsys back to splane
%step(zsys/(1+zsys));
