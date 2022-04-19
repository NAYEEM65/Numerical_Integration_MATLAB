%The mathlab program of GAUSS JACOBI Method. 
clc
clear all
n=input('number of iteration:');
tollerence=0.0001;
x(1)=0;
y(1)=0;
z(1)=0;
for i=1:1:n
 fprintf('%3.8f\t %3.8f\t %3.8f \n',x(i),y(i),z(i));
 x(i+1)=(9-2*y(i)-z(i))/10;
 y(i+1)=(-44-2*x(i)+2*z(i))/20;
 z(i+1)=(22+2*x(i)-3*y(i))/10;
 if (x(i+1)-x(i)<tollerence && y(i+1)-y(i)<tollerence && z(i+1)-z(i)<tollerence)
     fprintf('the number of step is:%d',i);
     break;
 end
end
