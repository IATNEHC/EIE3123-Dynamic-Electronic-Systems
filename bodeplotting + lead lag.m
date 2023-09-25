clc;
clear;

pkg load control;

%gnum = [200 250];             
%gden = [5 50.1 1 0];
%gsys = tf(gnum, gden);

%gnum = [41.6];             
%gden = [15000 12000];
%gsys = tf(gnum, gden);

zcl = [-1];
pcl = [0];
kcl = 2240;
gcl = zpk(zcl, pcl, kcl);

zl = [];
pl = [-1];
kl = 13/3000;
gsysl = zpk(zl, pl, kl);

zcr = [-1];
pcr = [0];
kcr = 3162;
gcr = zpk(zcr, pcr, kcr);

zr = [];
pr = [-1];
kr = 19/6000;
gsysr = zpk(zr, pr, kr);

%K = margin(gsys);       %maximum gain of the g(s)

%bode(gcl*gsysl, gcr*gsysr);
%margin(gcl*gsysl, gcr*gsysr);
step(feedback(gcl*gsysl,1));

s = tf('s');

lagsys = 0.063*((s+0.98)/(s+0.062))
%leadsys = 2.04457*((s+3.49678)/(s+7.1494))

KG = margin((gsys*lagsys));%*leadsys));

%bode(gsys*lagsys);
%margin(gsys*lagsys);
%step((gsys*lagsys)/(1+gsys*lagsys));





