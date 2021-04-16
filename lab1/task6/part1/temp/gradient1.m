function g = gradient1(x)
% partial derivative in respect of x(1)
g(1) = 2*(1.5 - x(1) + x(1)*x(2))*(x(2) - 1) + 2*(2.25 - x(1) + x(1)*x(2)^2)*(x(2)^2 - 1) + 2*(2.625 - x(1) + x(1)*x(2)^3)*(x(2)^3 - 1);

% partial derivative in respect of x(2)
g(2) = 2*(1.5 - x(1) + x(1)*x(2))*x(1) + 2*(2.25 - x(1) + x(1)*x(2)^2)*2*x(1)*x(2) + 2*(2.625 - x(1) + x(1)*x(2)^3)*3*x(1)*x(2)^2;
