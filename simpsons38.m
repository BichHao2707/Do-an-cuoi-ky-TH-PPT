function [result] = simpsons38(y,n)
    result = y(1) + y(n + 1);
    for i = 2 : 1 : n - 1
         result = result + 3*y(i);
    end
    for i = 4 : 1 : n - 3
         result = result - y(3*i);
    end
    result = 3/8 * result;
end