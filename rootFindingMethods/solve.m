function solve()
f = @(x) x^3 - 2*x^2 - 4


fprintf('Bisection Method\n')
a = 2
b = 3
approximation = 1e-6
eps = approximation;
[solution, no_iterations] = Bisection(f, a, b, eps);
if no_iterations > 0
	fprintf('Number of funtion calls: %d\n', no_iterations);
	fprintf('A solution is: %f\n', solution);
else
	fprintf('Abort execution!\n');
end


fprintf('\n\nFalse Position Method\n')
[solution, no_iterations] = FalsePosition(f, a, b, eps);
if no_iterations > 0
        fprintf('Number of funtion calls: %d\n', no_iterations);
        fprintf('A solution is: %f\n', solution);
else
        fprintf('Abort execution!\n');
end


fprintf('\n\nNewton-Raphson Method\n')
x0 = 2.5
fprintf('\n\n')
[sol, no_iterations] = Newton(f, x0, eps);
if no_iterations > 0
	fprintf('Number of funtion calls: %d\n', no_iterations);
	fprintf('A solution is: %f\n', sol);
else
	fprintf('Abort execution!\n');
end
