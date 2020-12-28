% d^2/dx^2 = -a(ua - u); 0 < x < L;
% u(0) = u1 ; u(L) = u2 ;

%constants
a = 0.01;
ua = 20;
u1 = 40;
u2 = 200;
L = 10;
n = 100;
x = linspace(u1, u2, n + 1);
y0 = [u1; 0; 0; 1];
nvars = 4;

y = rk(0, L, y0, n, nvars, a, ua);
y1 = y(1, :);
y2 = y(3, :);

y_f = yf(y1, y2, u2, n);

plot(x, y1)
hold on
plot(x, y2)
hold on
plot(x, y_f)
legend('y1', 'y2', 'y')
title('y1, y2, and y')




