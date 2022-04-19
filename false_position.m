% Program-2:The mathlab program of FALSE POSITION Method.
clc
clear all
f=@(x) 8-4.5*(x-sin(x));
disp('-------input-------');
e1=input('Enter the 1st point:');
e2=input('Enter the 2nd point:');
if (f(e1)*f(e2))>0
 disp('There is no root in the interval')
elseif(f(e1)*f(e2))==0
 if(f(e1)==0)
 fprintf('%f is a root in the given interval\n',e1);
 else
 fprintf('%f is a root in the given interval\n',e2);
 end
else
 fprintf('There is a real root in the interval\n');
 acc=0.0001;
 disp('------output------');
 m=(e1+e2)/2;
 i=0;
 while abs(f(m))>acc
 i=i+1;
 if (f(m)*f(e1))<0
 e2=m;
 else
 e1=m;
 end
 m=(e1+e2)/2;
 fprintf('%d. root=%f\tf(root)=%f\n',i,m,f(m));
 end
 fprintf('The root of the equation is:%f\n',m)
end
%Graph of the program
x=[-2:0.01:4];
plot(x,f(x),'m','linewidth',2)
hold on
plot(m,f(m),'ob')
hold on
plot([-5,5],[0,0])
hold on
plot([0,0],[-8,6])
hold on
xlabel('X-axis','fontsize',14)
ylabel('Y-axis','fontsize',14)
grid on
title('Graph of the function vs root','fontsize',14)
legend('Graph of 8-4.5*(x-sin(x)=0','root',2)
hold off
