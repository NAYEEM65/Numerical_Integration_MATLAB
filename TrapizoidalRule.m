 % Trapizoidal Rule
clc
clear
close all
%===========input section==================
 g = input('Enter the function: ','s');
 f = inline(g);
 a = input('Enter lower limit, a:  ');
 b = input('Enter upper limit, b:  ');
 n = input('Enter no. of subintervals, n:  ');
 
 h=(b-a)/n;
 S = f(a)+f(b);
 for i=1:n-1
     S = S+2*f(a+i*h);
 end
 I = h/2 *S;
 fprintf('The value of integration is %f \n', I);
 
 %==========plot=============

  x = linspace(a,b,2^n+1);
 y=f(x);
 bar(x,y)
  title('Bar Plot of  Trapizoidal Rule');
 xlabel('X Axis') ;
 ylabel('Y Axis') ;
 hold on
 %for i=1:2^n
     %plot([x(i),x(i)],[0,y(i)]);
 %end
