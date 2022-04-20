%The mathlab program of NEWTON BACWARD INTERPOLATION formula. 
clc
clear all
disp('.....input.....')
disp('enter the entries of x valus')
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
n=length(y);
for i=1:n
 d(i,1)=y(i);
end
for i=1:n-1
 for j=1:i
 d(i+1,j+1)=d(i+1,j)-d(i,j);
 end
end
disp([x',d])
xn=input('enter the year which value you get:');
h=abs(x(2)-x(1));
r=(xn-x(1))/h;
interpolation=d(1,1);
p=1;
for i=1:n-1;
 p=p*(r-i+1);
 q=factorial(i);
 interpolation=interpolation+(p*d(i+1,i+1))/q;
end
disp('....output...')
fprintf('the backword interpolation is:%f',interpolation);
plot(x,y,'b')
hold on
plot(xn,interpolation,'*k')
hold off