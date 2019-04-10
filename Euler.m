function [w] = Euler_esqueleto( f,t,y0,h) %lequite h
% matodo de Euler para ec. diferenciales de primer orden
w(1)=y0;
for i=1:2.*N
    w(i+1)=w(i) + h*f(t(i),w(i));
    % fórmula iterativa para resolver el problema;
end
return

