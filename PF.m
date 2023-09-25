clc;
clear;

pkg load control;

%z = [];
%p = [0 -1 -4];
%k = [1];

%sys = zpk(z, p, k);

b = [250];
a = [0.1 1 0 0];
[z, p, k, e] = residue(b, a); %z = num, p = (s-p), k = +k at the end, e = index
%turn (s+xp+-ypi) back to s^2+(2xp)s+(xp^2+yp^2)
%then complete the square
%num will be 2xz*(s+xp)+2yz*(yp)

