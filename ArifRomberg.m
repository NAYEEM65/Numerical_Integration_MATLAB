clc
clear all
f = @(x) (-5/9).*x.^2+5;
a = input('a: ');
b = input('b: ');
n = input('n: ');
h = (b-a)/n;
s = 0;

for i = 1:n-1
    s = s+2.*f(a+i.*h);
end
I1 = h./2.*(f(a)+f(b)+s);
fprintf('The first interation is %f\n',I1);
h = h/2;
s1 = 0;
for i = 1:2*n-1
    s1 = s1+2.*f(a+i*h);
end
I2 = h./2.*(f(a)+f(b)+s1);
fprintf('The second interation is %f\n',I2);

I = I2+(I2-I1)./3;
fprintf('The final interation is %f\n',I);

%plot
x = linspace(a,b,2^n+1);
y = f(x);
bar(x,y);
hold on
plot([-5,5],[0,0])
hold on
plot([0,0],[-8,6])
