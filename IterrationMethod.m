% program of ITERETION Method.
clc
clear all
f=@(x) x.^3+x.^2-1;
f2=@(x) 1/(x+1).^(1/2);
df=@(x)-1/(2*(x+1).^(1/2));
x1=input('Enter the initial value x1=');
acc=0.0001;
while (df(x1)>1)
 x1=input('there is no root in the initial value x1=');
end
x2=f2(x1);
i=0;
while (abs(x2-x1)>acc)
 i=i+1;
 x1=x2;
 x2=f2(x1);
 fprintf('%d root =%f\tf(root)=%f\n',i,x2,f(x2));
end
fprintf('the root of the equation is=%f\n',x2);
%Graph of the program
x=[-2:0.01:4];
plot(x,f(x),'m','Linewidth',2)
hold on
plot(x2,f(x2),'ob')
hold on
plot([-5,5],[0,0])
hold on
plot([0,0],[-8,6])
hold on
xlabel('x-axis','Fontsize',14)
ylabel('y-axis','Fontsize',14)
grid on
title('Graph of the function vs root','Fontsize',14)
legend('Graph of x^3+x^2+1=0','root',2);
hold off
grid on
title('Graph of the function vs root','Fontsize',14)
legend('Graph of x^3+x^2+1=0','root',2);
hold off
