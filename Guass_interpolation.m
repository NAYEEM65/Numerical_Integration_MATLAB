%The mathlab program of GAUSS INTERPOLATION formula. 
clc
clear all
close all
clear figure
disp('........input......')
disp('enter the year of x valus')
a1=input('a1=');
a2=input('a2=');
a3=input('a3=');
a4=input('a4=');
a5=input('a5=');
disp('enter the entries of y valus')
a6=input('a6=');
a7=input('a7=');
a8=input('a8=');
a9=input('a9=');
a10=input('a10=');
x=[a1 a2 a3 a4 a5];
y=[a6 a7 a8 a9 a10];
n=length(x);
h=x(2)-x(1);
for i=1:n
 D(i,1)=y(i);
end
for i=1:n-1
 for j=1:i
 D(i+1,j+1)=D(i+1,j)-D(i,j);
 end
end
s=input('enter the interpolated value:');
disp('...output...')
p=(s-x(n-1))/h;
prod(2)=p*(p+1);
prod(3)=p*(p+1).*(p-1);
prod(4)=p*(p+1).*(p-1).*(p+2);
sum(1)=0;
sum(2)=sum(1)+D(4,1)+(prod(1)*D(4,2));
for i=3:n
 sum(i)=sum(i-1)+prod(i-1)*D(5,i)/factorial(i-1);
end
fprintf('the required interpolation value is=%.3f is %.4f\n',s,sum(n));
grid on
plot(x,y,':r','linewidth',2.0)
hold on
plot(s,sum,'o')
hold off
xlabel('x-axis','fontsize',14)
ylabel('y-axis','fontsize',14)
title('interpolation vs sum','fontsize',14)
legend('graph of a original function','graph of a interpolation',2)