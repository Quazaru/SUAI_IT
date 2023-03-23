% Calculate nonlinear equation by multipliers with simple iteration method
% F - diff from equ, lambda - 1/F, 
% 17 var. | 6*x.^3 + x.^2 + x  - 1.8 = 0
clc;
x = 1;
disp('Добро пожаловать в программу вычисления корня нелинейного уравнения методом простых итераций.');
equ = correctInput('Для начала программы введите уравнение вида: 6*x.^3 + 12*x.^2 + 12, с неизвестной X: ', 'e');
A = correctInput('Введите левую границу: ', "n");
B = correctInput('Введите правую границу: ', "n");
Eps = correctInput('Введите желаемую точность: ', "n");
result = calcRootByIterations(equ, A, B, Eps,  true);

if ~isnan(result)
    fprintf("RESULT: %.8f", result);
    fprintf("RESULT BY FZERO: %.8f", fzero(equ, A));
    displayGraph(equ, A, B, result);
end
