%script for resolution curve
clear all;
Lcd=4.5; %chopper-detector distance
nu=64; %Hz
W=0.003; %chopper slit
Wg=0.012; %guide slit
R=0.25;
vC=2*pi*R*nu;

T2=1/nu;
v2=Lcd/T2;
fwhmT2 = ((W+Wg)+(Wg-W))/vC/2; %for trapezoidal

lambda_neutr1=0.5e-10;
v_neutr1=3961.5/(lambda_neutr1*1e10);
T1=Lcd/v_neutr1;

for i=1:1024
    T(i) = T1+(i-1)*30*1e-6;
    dTt(i) = fwhmT2/T(i);
    v_neutr(i)=Lcd/T(i);
    lambda(i)=3961.5/(v_neutr(i)*1e10);
end

%T=Lcd/v_neutr;

plot(T,dTt)
axis([0 T2 0 max(dTt)])

plot(lambda, dTt)
axis([0 max(lambda) 0 max(dTt)])

