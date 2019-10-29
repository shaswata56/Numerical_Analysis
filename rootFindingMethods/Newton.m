function [x, no_iterations] = Newton(f, x0, eps)
	pkg load symbolic
	syms n;
	ff = f(n);
	dif = diff(ff, n);
	dfdx = function_handle(dif);
	fprintf("%s\t%s\n", "Iteration", "root");
	x = x0;
	y = f(x);
	iteration_counter = 0;
	while abs(y) > eps
		y = f(x);
		iteration_counter = iteration_counter + 1;
		try
			x = x - (y) / dfdx(x);
		catch
			fprintf('Error! - derivative zero for x = %f\n', x);
			exit(1);
		end
		fprintf("%d\t\t%f\n", iteration_counter, x);
	end
	if abs(y) > eps
		iteration_counter = -1;
	endif
	no_iterations = iteration_counter;
end
