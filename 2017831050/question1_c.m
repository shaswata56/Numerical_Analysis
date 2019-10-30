function question1_c()
    b_root = question1_b();
    f = @(x) x^3 - 2*x^2 - 4;
    dff = b_root - fzero(f, 3);
    fprintf("Difference from method b and fzero() is: %d\n", dff);
end