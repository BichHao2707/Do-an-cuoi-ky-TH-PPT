function dx = TinhxyOH2(x, y, xValue,pp)
    n = length(x);
    n = cast(n,'uint16');

    if n<3
        dx = 'Không đủ dữ liệu';
    end

    h = x(2) - x(1);
    k = find(x==xValue);
    k = cast(k,'uint16');

    if pp == "tiến"
        dx = (4*y(k + 1) - 3*y(k) - y(k + 2))/(2*h);
    elseif pp == "lùi"
        dx = (3*y(k) - 4*y(k - 1) + y(k - 2))/(2*h);
    else
        dx = (y(k + 1) - y(k - 1))/(2*h);
    end
end