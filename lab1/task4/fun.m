% Plot the trajectory of Anti-Gradient Descent
[x,y] = meshgrid(-5:.5:5);

z = (1.5 - x + x.*y).^2 + (2.25 - x + x.*y.^2).^2 + (2.625 - x + x.*y.^3).^2;
figure(1)
hold off
contour(x, y, z)
[dx, dy] = gradient(z, .2, .2);
hold on
quiver(x, y, dx, dy)

% set the initial point
x=[4, 4];
% dummy variable required for the iterative process
xs = x;
% the number of iterations
itsk = 100;
% the step size
step = 0.00001;

for i=1:itsk

 % compute the next point
 x = xs - step*gradient1(xs);
 
 % plot the step
 plot([xs(1),x(1)],[xs(2),x(2)],'r',[xs(1),x(1)],[xs(2),x(2)],'ro')
 
 % refresh the variables
 xs = x;
 fprintf("Nr. %d x = %d, y = %d\n", i, xs(1), xs(2))
end
