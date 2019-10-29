function [solution, no_iterations] = Bisection(f, a, b, eps)
    fprintf("%s\t%s\t\t\t%s\t\t\t%s\n", "Iteration", "a", "b", "root");
    no_iterations = 0;
    if f(a) * f(b) >= 0
        fprintf('Single root does not exist between %f and %f.\n', a, b);
        exit(1);
    endif
    solution = a;
    while abs(b - a) >= eps
        solution = (a + b) / 2;
        no_iterations = no_iterations + 1;
        if f(solution) == 0
            break;
        elseif (f(a) * f(solution)) < 0
            b = solution;
        else
            a = solution;
        end
        fprintf("%d\t\t%f\t\t%f\t\t%f\n", no_iterations, a, b, solution);
    end
end
