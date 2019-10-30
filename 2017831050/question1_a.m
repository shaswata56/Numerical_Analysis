function [x, iter] = FalsePosition(f, a, b, eps)
    iter = 0;
    if f(a) * f(b) >= 0
        fprintf('Single root does not exist between %f and %f.\n', a, b);
        exit(1);
    end
    x = a;
    while abs(b - a) >= eps
        x = (a * f(b) - b * f(a)) / (f(b) - f(a));
        iter = iter + 1;
        if f(x) == 0
            break;
        elseif (f(x) * f(a)) < 0
            b = x;
        else
            a = x;
        end
    end
end