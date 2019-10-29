function solve()

A = [5 -2 3 0;-3 9 1 -2;2 -1 -7 1; 4 3 -5 7]
b = [-1 2 3 0.5]'

fprintf('Gauss-Seidel Method\n')
[x, itr] = GaussSeidel(A, b);
if itr > 0
    fprintf('Number of iterations: %d\n', itr);
    fprintf('Solution ');x
else
    fprintf('Abort execution!\n');
end


fprintf('\n\nGauss-Jaccobi Method\n')
[x, itr] = GaussJaccobi(A, b);
if itr > 0
    fprintf('Number of iterations: %d\n', itr);
    fprintf('Solution ');x
else
    fprintf('Abort execution!\n');
end