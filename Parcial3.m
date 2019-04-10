%Parcial3

% A)

clear all
%{
disp("-----------1 PROBLEMA------------")

f=@(t,y) 1-t+4*y ;
u=@(t) (1/4)*t-(3/16)+(19/16)*exp(4*t);
y0=1;
vError = [];
mError = [];
rError = [];
n=1;

%problema 1 - Euler
for i=[10,20,100,200,1000] %
    N=i;
    h=1/N;
    t0=0:h:2;
    [y,t]=Euler_esqueleto(f,t0,y0,h,N);
    v=u(t);
    error=max(abs(v-y));
    vError(n)=error;
    n=n+1;
end

n=1; % reinicio n

for i=[10,20,100,200,1000] %
    N=i;
    h=1/N;
    t0=0:h:2;
    [y,t]=Euler_mejorado(f,t0,y0,h,N);
    v=u(t);
    error=max(abs(v-y));
    mError(n)=error;
    n=n+1;
end

n=1; % reinicio n

for i=[10,20,100,200,1000] %
    N=i;
    h=1/N;
    t0=0:h:2;
    [y,t]=runge_kutta(f,t0,y0,h,N);
    v=u(t);
    error=max(abs(v-y));
    rError(n)=error;
    n=n+1;
end

disp("h = 0.05, 0.02, 0.01, 0.005, 0.001")
vError
mError
rError

disp("-----------2 PROBLEMA------------")


%2 problema

f1=@(x,y) 6*x^2-3*x^2*y;
u1=@(x) 2+exp(-x.^3);
y00=3;
vError1 = [];
mError1 = [];
rError1 = [];
n=1;

for i=[10,100,1000]
    N=i;
    h=1/N;
    t0=0:h:2;
    [y,x]=Euler_esqueleto(f1,t0,y00,h,N);
    v=u1(x);
    error=max(abs(v-y));
    vError1(n)=error;
    n=n+1;
end
n=1;

for i=[10,100,1000]
    N=i;
    h=1/N;
    t0=0:h:2;
    [y,x]=Euler_mejorado(f1,t0,y00,h,N);
    v= u1(x);
    error=max(abs(v-y));
    mError1(n)=error;
    n=n+1;
end
n=1;

for i=[10,100,1000]
    N=i;
    h=1/N;
    t0=0:h:2;
    [y,x]=runge_kutta(f1,t0,y00,h,N);
    v=u1(x);
    error=max(abs(v-y));
    rError1(n)=error;
    n=n+1;
end

vError1
mError1
rError1
%}
disp("-----------3 PROBLEMA------------")

%3 problema

a=1.4; %parámetro
b=0.3;

%F=@(x,y)[-2*x+y y+x^2];
u=1
F=@(x,y)[y -x+u*(1-x^2)*y];
y0=[1 1];
N=1000;
h=30/N;
t0=0:h:2;
%F(1,1);
%y=Euler_esqueletov(F,t0,y0,h,N)
y =runge_kuttav(F,t0,y0,h,N)
plot(y(:,1),y(:,2))


%{
T = table(t,h_01)
plot(t,h_01)
title('1er punto')
xlabel('t')
ylabel('y')
%}

%problema 2