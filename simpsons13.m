function [result] = simpsons13(y,n)
    result = y(1);
    %phan f(so le)
    for kodd = 2 : 2 : n
         result = result + 4*y(kodd);
    end
    %phan f(so chan)
    for keven = 3 : 2 : n - 1
         result = result + 2*y(keven);
    end
    result = result + y(n+1);
    result = 1/3 * result;
end
