clc;
clear all;
close all;
t=-40:4:60;
p=length(t)
for i=1:p;
    f(i)=(t(i)*1.8)+32;
    [t(i) f(i)]
end

    