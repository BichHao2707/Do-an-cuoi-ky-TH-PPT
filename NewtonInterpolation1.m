
        function [result, pt] = NewtonInterpolation1(xa, ya, x)
            n = length(xa);
            d = ya;
            sum = 0;
            syms z;

            for i = 1:n
                for j = 1:(i - 1)
                    d(i) = (d(j) - d(i)) / (xa(j) - xa(i));
                end
            end

            % Initialize the result with the last divided difference
            result = d(n);

            % Display the coefficients of the Newton interpolating polynomial
            fprintf('Newton interpolating polynomial coefficients:\n');
            disp(d);

            % Evaluate the Newton interpolating polynomial
            for j = (n-1):-1:1
                result = result * (z - xa(j)) + d(j);
            end

            sum = sum + result;
            pt = sum;
            p_float = vpa(pt, 3);
            giatri_x = subs(p_float, z, x);
            decimal_result = double(giatri_x);
            fxi = matlabFunction(p_float);
            decimal_result = fxi(x);
            
            % Display the result
            result = decimal_result;
        end
 
