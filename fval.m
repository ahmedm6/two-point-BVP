function w = fval(var, ua, a, z)
if var == 1
    w = z(2);
elseif var == 2
    w = ( z(1) - ua ) * a;
elseif var == 3
    w = z(4);
else
    w = z(3) * a;
end