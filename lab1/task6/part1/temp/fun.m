% Plot the trajectory of Anti-Gradient Descent
[x,y] = meshgrid(-5:.5:5);
z = (1.5 - x + x.*y).^2 + (2.25 - x + x.*y.^2).^2 + (2.625 - x + x.*y.^3).^2;
figure(1)
hold off
contour(x,y,z)
[dx,dy]=gradient(z,.2,.2);
hold on
quiver(x,y,dx,dy)
% set the initial point
x=[-2, 3];
xs=x; % dummy variable required for the iterative process
itsk=250; % the number of iterations


for i=1:itsk
%  A = hessian1(xs);
g = gradient1(xs);
%  step = length1(g)^2 / (g * A * g');
step = golden_section(xs);
 % compute the next point
 x = xs - step*g;
 % plot the step
 plot([xs(1),x(1)],[xs(2),x(2)],'r',[xs(1),x(1)],[xs(2),x(2)],'ro')
 % refresh the variables
 xs=x;
end
