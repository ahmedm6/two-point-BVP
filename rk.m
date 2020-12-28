function y = rk(t0, tm, y0, n, nvars, a, ua)

h = ( tm - t0 ) / n;
y = zeros(nvars, n + 1);
y(1: nvars, 1) = y0;
k1 = zeros(nvars, 1);
k2 = zeros(nvars, 1);
k3 = zeros(nvars, 1);


for i = 2 : n + 1
    for j = 1 : nvars
        k1(j, 1) = h * fval(j, ua, a, y(:, i - 1) );
    end
    for j = 1 : nvars
        k2(j, 1) = h * fval(j, ua, a, y(:, i - 1) + (1/2 * k1) );
    end
    for j = 1 : nvars
        k3(j, 1) = h * fval(j, ua, a, y(:, i - 1) - k1 + (2 * k2) );
    end
    for j = 1 : nvars
        y(:, i) = y(:, i - 1) + 1/6 * (k1 + 4*k2 + k3);
    end
end
end