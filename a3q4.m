clc;
close all;
clear all;
x=input('Enter a number less than 1 ');
while (x<1)
    y(x)=log(1/1-x);
    x=input('Enter a number less than 5');
    if x>1
        break;
    end
end
disp('Wrong input');