h = 0.1;
t = 0:h:2;
ystar = zeros(size(t));
ystar(1) = 9;
f = @(j, k) -2 * j + cos(4 * k);
for i=1:(length(t)-1)
    k =  f(ystar(i), t(i));
    ystar(i + 1) = ystar(i) + k * h;
end
Table = [t', ystar']