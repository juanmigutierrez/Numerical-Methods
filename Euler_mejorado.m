function [w,t] = Euler_mejorado( f,t0,y0,h,N )%lequite N
% matodo de Euler para ec. diferenciales de primer orden
w(1)=y0; 
t(1) = t0(1);
for i=1:N
    k1=f(t(i),w(i));
    k2=f(t(i)+h,w(i)+(h*k1));
    w(i+1) = w(i)+(h/2)*(k1+k2);
    t(i+1) = t(i)+h;
end
return