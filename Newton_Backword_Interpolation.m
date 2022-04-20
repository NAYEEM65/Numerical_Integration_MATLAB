%The mathlab program of NEWTON FORWARD INTERPOLATION Method.
clc
clear all
x=[1971 1981 1991 2001 2011];
y=[65425 89912 11145 130523 152518];
m=length(y);
dt=zeros(m,m+1);
for i=1:m
 dt(i,1)=x(i);
 dt(i,2)=y(i);
end
n=m-1;
for j=3:m+1
 for i=1:n
 dt(i,j)=dt(i+1,j-1)-dt(i,j-1);
 end
 n=n-1;
end
 fprintf('the forward difference table is given below:\n');
 disp(dt)
 z=input('the interpolated value is:');
 h=x(2)-x(1);
 p=(z-x(1))/h;
 sum=y(1);
 prod=1;
 le=length(y)-1;
 for i=1:le
 prod=prod*(p-i+1);
 sum=sum+(prod*dt(1,i+2))/factorial(i);
 end
 fprintf('the required interpolated value at %.2f is=%.6f',z,sum)
 %graph of the function
 plot(x,y,':r','linewidth',2.5)
 hold on
 plot(z,sum,'ok','linewidth',1.5)
 grid on
 legend('Graph of a given data','Interpolated value',2);
 xlabel('x-axis','fontsize',2)
 ylabel('y-axis','fontsize',12)
 hold off
