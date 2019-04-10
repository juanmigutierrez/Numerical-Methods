% scrip usa euler01
%
%funcion y'=f(t,y)
clear all
%f=@(t,y) 3+exp(-t)-(y/2); % función del problema 3+exp(-t)-(y/2)
%u=@(t) 6-2*exp(-t)-3*exp(-t/2); % solución analítica para comparar
f=@(t,y) 1-t+4*y ;
u=@(t) (1/4)*t-(3/16)+(19/16)*exp(4*t);
y0=1;
vError = [];
mError = [];
rError = [];
%{
for i =20:50:500
    N=i; % número de iteraciones.
    h=1/N;
    t=0:h:1; % intervalo (0,1)
    y=Euler_esqueleto(f,t,y0,h,N); % Invoca la función que calcula la solución aproximada.
    v=u(t);
    error=max(abs(v-y)); % error numérico
    vError(i-19)=error;
end 
for i =20:50:500
    N=i; % número de iteraciones.
    h=1/N;
    t=0:h:1; % intervalo (0,1)
    y=euler_mejorado(f,t,y0,h,N); % Invoca la función que calcula la solución aproximada.
    v=u(t);
    errorm=max(abs(v-y)); % error numérico
    mError(i-19)=errorm;
end 
listt=[0,0.1,0.2,0.3,0.4,0.5,1.0,1.5,2.0]
listh1=[0.001.0.01]
listh2=[0.2,0.1,0.05]
for i =20:50:500
    N=i; % número de iteraciones.
    h=1/N;
    t=0:h:1; % intervalo (0,1)
    y=runge_kutta(f,t,y0,h,N); % Invoca la función que calcula la solución aproximada.
    v=u(t);
    errorr=max(abs(v-y)); % error numérico
    rError(i-10)=errorr;
end
%}
%tabla
t=[0,0.1,0.2,0.3,0.4,0.5,1.0,1.5,2.0];
Improved_Euler_h_025=[];
Runge_Kutta_h_02=[];
Runge_Kutta_h_01=[];
Runge_Kutta_h_005=[];
Exact=[];

%improved euler
for h=0.025
    y=Euler_mejorado(f,t,y0,h);
    Improved_Euler_h_025=y
end
%{
for h=0.1
    y=runge_kutta(f,t,y0,h);
    Runge_Kutta_h_02=y
end

for h=0.2
    y=runge_kutta(f,t,y0,h);
    Runge_Kutta_h_02=y
end

for h=0.2
    y=runge_kutta(f,t,y0,h);
    Runge_Kutta_h_02=y
end
%}
