function [w] = Exact(u,t0,N) %lequite N
% matodo de Euler para ec. diferenciales de primer orden
w(1)=y0; 
t(1) = t0(1);
for i=1:N
    w(i+1) = u(i)
    t(i+1) = t(i)+h;
end