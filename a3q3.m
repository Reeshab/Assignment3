clc;
clear;
close all;
ls=80;
la=50*(pi/180);
g=9.81;
t=0:0.5:12;
for i=1:length(t)
    
    u=ls*cos(la);
    v=ls*sin(la);
    x(i)=u*t(i);
    
    y(i)=v*t(i)-(0.5*g*(t(i)^2));
    
    yv(i)=v-g*t(i);
    [t(i) x(i) y(i) yv(i)]
end

    trajectory=table(t',x',y',yv')