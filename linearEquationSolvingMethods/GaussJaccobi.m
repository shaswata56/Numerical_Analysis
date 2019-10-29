function [x, itr] = GaussJaccobi(A, b)
    fprintf("%s  %s\n", "Iteration", "root");
    x = [0 0 0 0]';
    n = size(x,1);
    normVal = Inf;
    eps = 1e-6; itr = 0;
    while normVal > eps
        x_old = x;
        for i = 1 : n
            sigma = 0;
            for j = 1 : n
                if j ~= i
                    sigma = sigma + A(i, j) * x(j);
                end
            end
            x(i) = (1 / A(i,i)) * (b(i) - sigma);
        end
        itr = itr + 1;
        fprintf("%d", itr);
        x
        fprintf("\n")
        normVal = abs(x_old - x);
    end
end