function [sol, iter] = FalsePosition(f, a, b, eps)
    fprintf("%s\t%s\t\t\t%s\t\t\t%s\n", "Iteration", "a", "b", "root");
    iter = 0;
    if f(a) * f(b) >= 0
        fprintf('Single root does not exist between %f and %f.\n', a, b);
        exit(1);
    end
    sol = a;
    while abs(b - a) >= eps
        sol = (a * f(b) - b * f(a)) / (f(b) - f(a));
        iter = iter + 1;
        if f(sol) == 0
            break;
        elseif (f(sol) * f(a)) < 0
            b = sol;
        else
            a = sol;
        end
        fprintf("%d\t\t%f\t\t%f\t\t%f\n", iter, a, b, sol);
    end
end
