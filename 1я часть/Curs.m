h = 0.5;

z1 = 0;
z2 = 0;
z3 = 0;

for t = 1:100
    
    z1(t+1) = z1(t) + h*z2(t);
    z2(t+1) = z2(t) + h*z3(t);
    z3(t+1) = z3(t) + h*(-z1(t) + 3 - (10*z2(t)) - (32*z3(t)))/32;
    
    y(t) = z1(t) + 2*z2(t) - 24*z3(t);
 
end;

t = 1:100;
plot(t,y, 'k-');
xlabel('t');
ylabel('Y(t)');

clear all;
