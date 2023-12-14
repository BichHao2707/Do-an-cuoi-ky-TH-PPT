function [dx] = DHOh(fx,x,h,pp)
    fx = str2func(['@(x)',fx]);
    if pp =="tiến"
        dx = (fx(x+h) + fx(x))/h;
    elseif pp == "lùi"
        dx = (fx(x)-fx(x-h))/h;
    
    end
   
end