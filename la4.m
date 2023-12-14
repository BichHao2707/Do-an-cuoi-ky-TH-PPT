function [result_at_x, simplified_result] = la4(xa, ya, x)
            n = length(xa);
            sum = 0; 
            syms z; 
            for i = 1:n
                product = ya(i);
                for j = 1:n
                    if i ~= j
                        product = product * (z - xa(j)) / (xa(i) - xa(j)); 
                    end
                end
                sum = sum + product; 
                disp(['    P(z) = ', char(sum)]);
            end
            simplified_result = simplify(sum);
            disp(['Đa thức nội suy sau khi rút gọn: P(z) = ',       char(simplified_result)]);
            result_at_x = subs(simplified_result, z, x);
            decimal_result = double(result_at_x);
            fx = matlabFunction(simplified_result);
            decimal_result = fx(x);
            disp(['Kết quả tại x = ', num2str(x), ': ', num2str(decimal_result)]);
            for i = 1:n
                result_at_xi = subs(simplified_result, z, xa(i));
                disp(['    P(', num2str(xa(i)), ') = ', num2str(double(result_at_xi))]);
            end
        end
