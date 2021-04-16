% Plot the trajectory of Anti-Gradient Descent
[x, y] = meshgrid(-5:.5:5);
z = (1.5 - x + x.*y).^2 + (2.25 - x + x.*y.^2).^2 + (2.625 - x + x.*y.^3).^2;
figure(1)
hold off
contour(x, y, z)
[dx, dy] = gradient(z, .2, .2);
hold on
quiver(x, y, dx, dy)

% set the initial point
x0 = [4, 5];
% dummy variable required for the iterative process
xs = x0;
% the number of iterations
itsk = 100;
s = -df(x0(1), x0(2));

for i=1:itsk
    
    % calculate gamma/step
    gamma = golden_section_search(xs, s);
    
    % compute the next point
    x = xs + gamma*s;
    
    % plot the step
    plot([xs(1),x(1)],[xs(2),x(2)],'r',[xs(1),x(1)],[xs(2),x(2)],'ro')
    
    g_1 = df(x(1), x(2));
    len_1 = length1(g_1)^2;
    
    g_2 = df(xs(1), xs(2));
    len_2 = length1(g_2)^2;
    b = len_1/len_2;
    
    % calculate gradient
    g = df(x(1), x(2));
    s = -g + b*s;
    
    % refresh the variables
    xs = x;
    
    fprintf("Nr. %d x = %d, y = %d\n", i, xs(1), xs(2))
end
