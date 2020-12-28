function y = sys_improved_euler(t0, tm, y0, n, nvars)

h = ( tm - t0 ) / n;
y = zeros(nvars, n + 1);
z = zeros(nvars, 1);
y(1 : nvars, 1) = y0;

t = t0;
for i = 2 : n + 1
    for j = 1 : nvars
        z(j, 1) = y(j, i - 1) + ( h / 2 ) * fval(j, t, y(:, i - 1) );
    end
    for j = 1 : nvars
        y(j, i) = y(j, i - 1) + h * fval(j, t + h / 2, z);
    end
    t = t + h; 
end

