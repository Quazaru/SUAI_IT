function [] = testVer()
    disp("Тeстовая версия программы по вычислению корня уравнения методом простых итераций");
    fprintf("[ Вариант 17 | Уравнение: 6x^3 + x^2 + x - 1.8 | Границы: [-1, 10] | Точность: 0.00000001 ] \n\n");
    equ = @(x)6*x.^3 + x.^2 + x - 1.8;
    A = -1; B = 10;
    Eps = 0.00000000001;
    result = calcRootByIterations(equ, A, B, Eps, true);
    fprintf("Корень: %.8f \n", result);
    displayGraph(equ, A, B, result);
    fprintf("Корень, полученный fzero(): %.8f \n", fzero(equ, A+B/2));
end

