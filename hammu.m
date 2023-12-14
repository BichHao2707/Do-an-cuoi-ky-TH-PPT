function [a, b, r2] = hammu(x, y)
n = length(x);
XX = log10(x);
YY = log10(y);
sumx = 0;
sumy = 0;
sumxy = 0;
sumx2 = 0;
st = 0;
sr = 0;
for i = 1:1:n
sumx = sumx + XX(i);
sumy = sumy + YY(i);
sumxy = sumxy + XX(i)*YY(i);
sumx2 = sumx2 + XX(i)*XX(i);
end
xm = sumx/n;
ym = sumy/n;
A = (n*sumxy - sumx*sumy)/(n*sumx2 - sumx*sumx);
B = ym - A*xm;
for i = 1:1: n
st = st + (YY(i) - ym)^2;
sr = sr + (YY(i) - A*XX(i) - B)^2;
end 
r2 = (st - sr)/st;
b = A;
a = 10^B;
end 
