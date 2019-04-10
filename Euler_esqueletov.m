function [ys,ts] = Euler_esqueletov(f,tv,y0,h,N) %lequite N
t0=tv(1);
T=tv(length(t0));
ts=zeros(N+1,1);
ys = zeros(N+1,length(y0));
t = t0; y = y0
ts(1) = t ;
ys(1,:) = y
for i=1:N
    k1=f(y(1,1),y(1,2))
    y= y+h*k1
    t=t+h;
    ts(i+1) = t; 
    ys(i+1,:) = y;
end
