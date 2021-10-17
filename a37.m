clc;
clear all;
close all;
n=input('Enter the number of points you wanna input');
for i = 1:n
temp = input('Enter [x y] pair: ');
x(i) = temp(1);
y(i) = temp(2);
end
sum_x = 0;
sum_y = 0;
sum_x2 = 0;
sum_xy = 0;
for i = 1:n
sum_x = sum_x + x(i);
sum_y = sum_y + y(i);
sum_x2 = sum_x2 + x(i)^2;
sum_xy = sum_xy + x(i) * y(i);
end
x_bar = sum_x / n;
y_bar = sum_y / n;
m = (sum_xy - sum_x * y_bar) / ( sum_x2 - sum_x * x_bar);
y_int = y_bar - m * x_bar;
plot(x,y,'-o');
hold on;
xmin = min(x)
xmax = max(x)
ymin =m * xmin + y_int
ymax = m * xmax + y_int
plot([xmin xmax],[ymin ymax],'r-','LineWidth',2);
hold off;
grid on
