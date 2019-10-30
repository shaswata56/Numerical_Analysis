function question2_a()
    h = 0.1;
    f = @(x,y) (x^2 + y^2) / 2;
    ret = EulersMethod(h, f)
end

function ret = EulersMethod(h, f)
    x = 0:h:0.4;
    y = zeros(size(x));
    y(1) = 1;
    for i=1:(length(x)-1)
        k =  f(x(i), y(i));
        y(i + 1) = y(i) + k * h;
    end
    ret = [x', y'];
end