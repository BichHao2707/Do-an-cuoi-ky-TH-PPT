function [result] = hinhthang(y,n)
    %Kết quả phép tính hình thang
    result = y(1);
    for i = 2 : 1 : n
         result = result + 2*y(i);
    end
    result = result + y(n+1);
    result = 1/2 * result;
end
