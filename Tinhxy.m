function dx = Tinhxy(x, y, xValue,pp)
    n = length(x);
    n = cast(n,'uint16');

    if n<3
        dx = 'Không đủ dữ liệu';
    end

    h = x(2) - x(1);
    k = find(x==xValue);
    k = cast(k,'uint16');

    if pp == "tiến"
        dx = (y(k + 1) - y(k))/h;
    elseif pp == "lùi"
        dx = (y(k) - y(k - 1))/h;
    else
        dx = 'chọn pp khác';
    end
end