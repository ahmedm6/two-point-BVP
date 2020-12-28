function yf = yf(y1, y2, u2, n)
yf = zeros(n, 1);

for i = 1 : n + 1
    yf(i) = y1(i) + ( (u2 - y1(n + 1)) / y2(n + 1) ) * y2(i);
end

end