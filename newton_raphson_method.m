%The mathlab program of NEWTON RAPHSON Method.
function newton_raphson_method
clc
clear all
clear fig
disp('-----input----')
xl=input('the value of xl=');
xu=input('the value of xu=');
tol=0.0001;
disp('-----output----')
if ((f(xl)*f(xu))<0)
 x(1)=((xl+xu)/2);
 if(dF(x(1))~=0)
 for i=1:1000
 x(i+1)=((x(i)-((f(x(i))/f(x(i))))));
 error=abs(x(i+1)-x(i));
 fprintf('%d %4f %8f\n',i,x(i),f(x(i+1)))
 if(error<tol)
 root=x(i+1);
 fprintf('the error and root and the value of f(x) is %f\n %f\n %f\n',error,root,f(root))
 break
 end
 end
 end
else
 fprintf('there is no real root of f(x) or f(x) in the interval %d %d',xl,xu)
end
 
disp('----figure----')
x=(-2:0.01:2);
plot(x,f(x),'r','linewidth',2)
hold on
%plot(x,f(x),'ob')
plot([-5,5],[0,0])
hold on
plot([-0,0],[-8,8])
hold off
xlabel('x_axis','fontsize',14)
ylabel('y_axis','fontsize',14)
grid on
title('graph of the function vs root','fontsize',14)
legend('graph of x^3-2*x-1','root',2)
end
function z=f(x)
 z=x.^3-2*x-5;
 end
 function dz=dF(x)
 dz=3*x.^2-2;
 end