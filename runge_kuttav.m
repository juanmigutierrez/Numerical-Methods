function [ys,t] = runge_kuttav( f,tv,y0,h,N ) %lequite N
% matodo de Euler para ec. diferenciales de primer orden
t0=tv(1);
T=tv(length(t0));
ts=zeros(N+1,1);
ys = zeros(N+1,length(y0));
t = t0; y = y0
ts(1) = t ;
ys(1,:) = y
for i=1:N
    k1=f(y(1,1),y(1,2));
    k2=f(y(1,1)+0*5*k1(1,1),y(1,2)+(0.5*h*k1(1,2)));
    k3=f(y(1,1)+0*5*k2(1,1),y(1,2)+(0.5*h*k2(1,2)));
    k4=f(y(1,1)+0*5*k3(1,1),y(1,2)+(h*k3(1,2)));
    y = y+(h/6)*(k1+2*k2+2*k3+k4);
    t(i+1) = t(i)+h;
    ys(i+1,:) = y;
end
return