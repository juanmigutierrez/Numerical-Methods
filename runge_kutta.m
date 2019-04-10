function [w,t] = runge_kutta( f,t0,y0,h,N ) %lequite N
% matodo de Euler para ec. diferenciales de primer orden
w(1)=y0;
t(1) = t0(1);
for i=1:N
    k1=f(t(i),w(i));
    k2=f(t(i)+0.5*h,w(i)+(0.5*h*k1));
    k3=f(t(i)+0.5*h,w(i)+(0.5*h*k2));
    k4=f(t(i)+h,w(i)+(h*k3));
    w(i+1) = w(i)+(h/6)*(k1+2*k2+2*k3+k4);
    t(i+1) = t(i)+h;
end
return