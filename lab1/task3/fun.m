x0 = [3, 3]; % guess the initial point
options = optimset('LargeScale','off'); % no LargeScale functions
[x, fval, exitflag, output] = fminunc(@objfun, x0, options);
disp(x);
disp(fval);
disp(exitflag);
