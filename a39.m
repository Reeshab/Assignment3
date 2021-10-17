%Script file:-Ass3Q9
%Purpose:-
%to solve the question of Assignment 3 and to find ramanujan number
%Record of Revision
% Date      Programmer        Registration No.     Description of change
% ====      ==========        ================     =====================
% 21/02/18  Satyajit Pasyat      1641014004         original code
%
%Define variables
%  n = variable for number of inputs
%  g = variable for calculation of geometric mean
%  r = variable for calculation of rms value
%  h = variable for calculation of harmonic mean
%  x = variable for number entered
%  AM = variable for Arithmetic mean
%  GM = variable for Geometric mean
%  rms = variable for RMS value
%  hm = variable for Harmonic mean
% Prompt the user to input value of n
clc;
clear all;
close all;
n=input('Enter the highest value');
a=1:n;
b=a;
c=a;
d=a;
p=length(a);
mm=1:p;
for i=1:p
    for j=1:p
        for k=1:p
            for l=1:p
                if(a(i)~=b(j) && a(i)~=c(k) && a(i)~=d(l) && c(k)~=b(j) && d(l)~=b(j) && c(k)~=d(l))
%                    if([a b c d]~=[b a c d] || [a b c d]~=[b c a d] || [a b c d]~=[b c d a] || [a b c d]~=[a c b d] || [a b c d]~=[a c d b] || [a b c d]~=[a b d c])
                    if((a(i)^3+b(j)^3==c(k)^3+ d(l)^3))
%                         disp(a(i));
%                         disp(b(j));
%                         disp(c(k));
%                         disp(d(l));
                        num(i)= (a(i)^3)+(b(j)^3);
                        x=a(i);
                        y=b(j);
                        z=c(k);
                        w=d(l);
%                        disp(num);
                         rr(i,:)=[x y z w];
                    end
                end
              
            end
        end
    end
end

summ=num';
ss=[rr summ];
[mm,kk]=find(summ~=0);
rr1=rr(mm,:);
ss1=summ(mm,:);
[UniXY,Index]=unique(ss1,'rows');
 final=rr1(Index,:);
 finalsum=ss1(Index,:);
 ramanj=[final finalsum];
 disp ([final finalsum])
% [el,loc]=find(finalsum<=6000);
%  reqsumm=ramanj(el,:);
%  disp(reqsumm)
