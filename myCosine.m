clc;
clear all;
close all;
n=input('enter the number of summation terms');
k=1:n;
p=2*(k-1);
x=pi/4;
for i=1 : length(p)
     f(i)=((-1)^(k(i)-1)*(x^p(i))/factorial(p(i)));
end
res=sum(f);