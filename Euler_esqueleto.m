function [y,t] = Euler_esqueleto( f,t0,y0,h,N) %lequite N
% matodo de Euler para ec. diferenciales de primer orden
y(1)=y0; 
t(1) = t0(1);
for i=1:N
    k1=f(t(i), y(i));
    y(i+1) = y(i)+h*k1;
    t(i+1) = t(i)+h;
end

