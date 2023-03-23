function result = calculateStep(x, equ, lambda)
% Calculate the equation by simple iteration method one time
% x - x0
% equ - equation
% lamda - @(x) 1/diff(equ, x)
    result = x - lambda(x) * equ(x);
end