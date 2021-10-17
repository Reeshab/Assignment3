clc;
clear;
close all;
g=1;
s=0;
h=0;
n=input('Enter the number of times you want to enter value');
for f=1:n;
    k=input('Enter the value');
    g=g*k;
    s=s+(k^2);
    h=h+(1/k);
end
gm=g^(1/n);
rms=((1/n)+s)^(1/2);
hm=n/h;
disp(gm);
disp(rms);
disp(hm);