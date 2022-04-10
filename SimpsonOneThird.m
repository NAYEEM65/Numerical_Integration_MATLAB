 %  Simpson's 1/3 Rule
clc
clear
close all
%===========input section==================
 g = input('Enter the function: ','s');
 f = inline(g);
 a = input('Enter lower limit, a:  ');
 b = input('Enter upper limit, b:  ');
 n=input('Enter number of intervals (multiple of 3)=');
 
 h=(b-a)/n;
 x=a:h:b;
 sum1 = 0;
 sum2 = 0;
 for i = 1:n-1
     if mod(i,2)==0;
         sum2 = sum2+f(a+i*h);
     else
         sum1 = sum1+f(a+i*h);
     end
 end
 y = h/3.*(f(a)+f(b)+4.*sum1+2.*sum2);
 fprintf('The value of y is: %f\n\n', y);
 bar(x,y)
  title( 'Simpsons 1/3 Rule');
 xlabel('X Axis') ;
 ylabel('Y Axis') ;