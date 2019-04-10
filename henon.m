% funcion del plano en el plano.
F=@(x,y)[y+1-a*x^2 b*x];
a=1.4; %parámetro
b=0.3;  %parámetro
x0=[1 1]; %punto incial
N=1000;
x=zeros(2,1);
x(:,1)=x0;
for n=1:N
    x(:,n+1)=F(x(1,n),x(2,n)); %iteraciones
end
plot(x(1,:),x(2,:),'.')
pause (2)
plot(x(1,950:1000)) %pinta las primeras coordenadas de los últimos 50 puntos.
pause (2)
plot(x(2,950:1000)) %pinta las segundas coordenadas de los últimos 50 puntos.

