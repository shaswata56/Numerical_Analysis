function question2_b()
    h = 0.1;
    f = @(x,y) (x^2 + y^2) / 2;
    ret = RungeKutta(h, f)
    plot(ret);
    pause(10);
end

function ret = RungeKutta(h, f)
    x = 0:h:0.4;
    y = zeros(size(x));
    y(1) = 1;
    for i=1:(length(x)-1)
        k1 = f(x(i),y(i));
        k2 = f(x(i)+0.5*h,y(i)+0.5*h*k1);
        y(i+1) = y(i) + (1/6)*(k1+2*k2)*h;
    end
    ret = [x', y'];
end