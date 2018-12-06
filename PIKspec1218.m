%Script for spectrometer for PIK start in December, 2018
%We have continuous source with 3 Maxwell distributions.
%Aim: where to stand chopper, where to stand derector, how fast should we
%rotate it to avoid frame overlap.
clear all;
h=4.135667662*1e-15; %eV*sec Plank constant
c=3*1e8; %speed of light for going from eV to kg
m=939.5654133*1e6/c^2; %eV/(m/s)^2 -> neutron mass

Lcd=4.5; %chopper-detector distance
nu=32; %Hz
nslits=2;
W=0.003;

%Wang=0.7473; %full angular slit width, deg \ theta0 in McStas
DP=0.54; % chopper diameter, meters
R=0.25;
vC=2*pi*R*nu;
Wang=W/pi/DP*360;

%wavelength, meters
lambda_min = 0.5e-10;
lambda_max=40*1e-10;
vmax=3961.5/(lambda_min*1e10); %lambda_min

%Frame Overlap
vmin=Lcd/(1/nu/nslits+Lcd/vmax);
lambda_max=3961.5/vmin*1e10;
lambda_max
%vmin=3961.5/(lambda_max*1e10);%lambda_max
%nu=1/(Lcd/vmin-Lcd/vmax)/nslits;
%nu

%lambda_neutr=4.31e-10; Here we will have 10% resolution
lambda_neutr=0.5e-10;
v_neutr=3961.5/(lambda_neutr*1e10);
E=h^2/(2*m*lambda_neutr^2)*1e3;%meV
v_neutr1 = sqrt(2*E*1e-3/m); %neutron speed, m/s

%Resolution
%fwhmT = 2*Wang/nu/360/2;
fwhmT2 = 2*W/vC/2;
T=Lcd/v_neutr;%0.0057 s = 5.7 ms = 5700 mcs for 5AA
%Lcdmax=SigmaT*2.355*v_neutr/RelRes
fwhmT2/T



