function gamma = golden_section_search(xs)

% start of interval
a = 0;
% end of interval
b = 1;
% accuracy value
epsilon = 0.000001;
max_iterations = 50;
golden_ratio = double((sqrt(5)-1)/2);
iteration = 0;

x1 = a + (1 - golden_ratio)*(b - a);
x2 = a + golden_ratio*(b - a);

f_x1 = g(xs, x1);
f_x2 = g(xs, x2);

while ((abs(b - a) > epsilon) && (iteration < max_iterations))
    if(f_x1 < f_x2)
        b = x2;
        x2 = x1;
        x1 = a + (1 - golden_ratio)*(b - a);
        f_x1 = g(xs, x1);
        f_x2 = g(xs, x2);
    else
        a = x1;
        x1 = x2;
        x2 = a + golden_ratio*(b - a);
        f_x1 = g(xs, x1);
        f_x2 = g(xs, x2);
    end
    
    iteration = iteration + 1;
end

% chooses minimum point
if(f_x1 < f_x2)
    gamma = x1;
else
    gamma = x2;
end
