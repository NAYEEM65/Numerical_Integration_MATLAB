 % Romberg integration algorithm
clc
clear
close all
%===========input section==================
 g = input('Enter the function: ','s');
 f = inline(g);
 a = input('Enter lower limit, a:  ');
 b = input('Enter upper limit, b:  ');
 n=input('Enter number of intervals = ');
  
 h = b-a;
 r = zeros(2,n+1);
 r(1,1) = (f(a)+f(b))/2*h;
 fprintf('\nRomberg integration table:\n');
 fprintf('\n %11.8f\n\n', r(1,1));
 
%==============loop=================
 for i = 2:n
    sum = 0;
    for k = 1:2^(i-2)
       sum = sum+f(a+(k-0.5)*h);
    end
    r(2,1) = (r(1,1)+h*sum)/2;
   
    for j = 2:i
       I = 2^(2*(j-1));
       r(2,j) = r(2,j-1)+(r(2,j-1)-r(1,j-1))/(I-1);
    end

    for k = 1:i
       fprintf(' %11.8f',r(2,k));
    end
  
    fprintf('\n\n');
    h = h/2;
    for j = 1:i
       r(1,j) = r(2,j);
    end
 end 
 %==============graph================
 x = linspace(a,b,2^n+1);
 y=f(x);
 plot(x,y)
  title('Plot of  RomeBerg Integration Rule');
 xlabel('X Axis') ;
 ylabel('Y Axis') ;
 hold on
 for i=1:2^n
     plot([x(i),x(i)],[0,y(i)]);
 end
