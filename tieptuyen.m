function [x1, n] = tieptuyen(fx, a, b, saiso)
dx = str2sym(fx);
dx1 = diff(dx);
dh = matlabFunction(dx1);
fx = str2func(['@(x)', fx]);
x0 = (a+b)/2;
n = 0;
while (1)
%n = n + 1;
z = fx(x0)/dh(x0);
x1 = x0 - z;
e = abs(x1 - x0);
if (e < saiso)
    break;
end
x0 = x1;
n = n + 1;
end
end





















