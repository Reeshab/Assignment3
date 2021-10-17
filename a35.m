clc
clear all
close all
q=1.602*10^(-19);
k=1.38*10^(-23);
Vd=[0:0.1:0.6];
for t=[297.039 310.928 324.817]
    v=((q*Vd)/(k*t));
    Id=(2*10^(-6))*(exp(v)-1);
    plot(Vd,Id)
    xlabel('voltage');
    ylabel('current');
    title('diode characteristics');
    hold on; 
end;
legend('75','100','150')
