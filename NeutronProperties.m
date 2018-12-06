clear all
%ПЕРЕВОД ДЛИНЫ ВОЛНЫ НЕЙТРОНА В ЭНЕРГИЮ
h=4.135667662*1e-15; %eV*sec Plank constant
c=3*1e8; %speed of light for going from eV to kg
m=939.5654133*1e6/c^2; %eV/(m/s)^2 -> neutron mass
kB=8.6173303*1e-5; %eV/K , Boltzmann constant
%%%FROM LAMBDA TO ENERGY
lambda=1.78*1e-10 ; %ЗАДАТЬ длину волны падающую, meters
E=h^2/(2*m*lambda^2)*1e3;%meV
%%%FROM ENERGY TO LAMBDA
%E=3.3*1e-3; %значащие цифры в мэВ для простоты восприятия
%lambda=h/(sqrt(2*E*M)); %
%%%%%%%%%%%%%%%%%%
v_neutr = sqrt(2*E*1e-3/m); %neutron speed, m/s
v0 = 3956.035/(lambda*1e10); %checking the constant 3956.035
T=E*1e-3/kB; %K, peak Maxwell temperature for such v_neutr in peak, E=kB*T

lambda
E
v_neutr
T

