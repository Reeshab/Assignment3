clc;
clear all;
close all;
load noisyData.mat;
plot(x,'b.');
n=length(x);
xx1=0;
xx2=0;
x(n+1)=0;
x(n+2)=0;
y(1)=(xx1+xx2+x(1)+x(2)+x(3))/5;
y(2)=(xx2+x(1)+x(2)+x(3)+x(4))/5;
for i=3:n-2
    y(i)=(x(i-2)+x(i-1)+x(i)+x(i+1)+x(i+2))/5;
end
y(n-1)=(x(n-3)+x(n-2)+x(n-1)+x(n)+x(n+1))/5;
y(n)=(x(n-2)+x(n-1)+x(n)+x(n+1)+x(n+2))/5;
hold on
plot(y, 'r');
title('Smoothed curve of noisy data');
legend('Original Data','Smoothed');
ylabel('Data Value');
xlabel('Index');
