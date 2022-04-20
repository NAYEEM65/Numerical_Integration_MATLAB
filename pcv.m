clc
clear all
f=@(x) (-5/9).*x.^2+5;
a=input('Enter lower limit a=');
b=input('Enter upper limit b=');
n=input('enter number of subdivision n=');
h=(b-a)/n;
s=0;
for i=1:n-1
    s=s+2*f(a+i*h);
end
I1=h/2*(f(a)+f(b)+s);
fprintf('The value of integration I1 is: %f\n',I1);
h=h/2;
s1=0;
for i=1:2*n-1
    s1=s1+2*f(a+i*h);
end
I2=h/2*(f(a)+f(b)+s1);
fprintf('The value of integration I2 is: %f\n',I2);
 
I=I2+((I2-I1)./3);
fprintf('The value of integration is: %f\n',I)

 x = linspace(a,b,2^n+1);
 y=f(x);
 bar(x,y)
 hold on
plot([-5,5],[0,0])
hold on
plot([0,0],[-8,6])
hold on
xlabel('X-axis','fontsize',14)
ylabel('Y-axis','fontsize',14)
grid on
title('Plot of  RomeBerg Integration Rule');
 xlabel('X Axis') ;
 ylabel('Y Axis') ;
 hold on
 for i=1:2^n
     plot([x(i),x(i)],[0,y(i)]);
 end

 
     
     