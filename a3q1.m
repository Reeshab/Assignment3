clc;
close all;
clear all;
n=input('Enter a number= ');
for i=1:1:n;
    if(rem(i,2)==0 && rem(i,3)==0)
        disp('Divisibile by 2 and 3');
    elseif(rem(i,2)==0)
        disp('Divisible by 2');
         elseif(rem(i,3)==0)
               disp('Divisible by 3');
    else
        disp('Not divisible by 2 and 3');
    end
end