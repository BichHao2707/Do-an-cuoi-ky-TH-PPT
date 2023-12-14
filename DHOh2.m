function [dx] = DHOh2(fx,x,h,pp)
    fx = str2func(['@(x)', fx]);
    if pp == "tiến"
        dx = (4*fx(x+h) - 3*fx(x) - fx(x+2*h))/(2*h);
    elseif pp == "trung tâm" 
        dx = (fx(x+h)-fx(x-h))/(2*h);
    else
        dx = (3*fx(x) - 4*fx(x-h) + fx(x-2*h))/(2*h);
    end
end