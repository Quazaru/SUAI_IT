function result = calcRootByIterations(equ, A, B, Eps, tracing)
% calcRootByIterations.m - calculate the equation by simple iteration
% method
%
% equ - equation to solve
% A, B - left, right boundaries to define the root
% Eps - accuracy 
% tracing - might be True\False, if True - print all of the way of the
% soution by steps
x = 0;
if(equ(x) == 0)
    result = 0;
    return;
end
if(fDef(equ,x) == 0 || sign(fDef(equ, Inf)) == sign(fDef(equ, -Inf) ))
    result = NaN;
    disp("У данного уравнения нет корней");
    return;
end

lambda = @(x) (1 / fDef(equ,x));
x0 = (A+B)+1;
x1 = (A+B)/2;
i = 1;

if(tracing)
    fprintf("X0 = %.4f \n", x0);
end

while(abs(x1 - x0) > Eps)
   x0 = x1;
   x1 = calculateStep(x0, equ, lambda);

   if (tracing)
      fprintf("Шаг #%2d | X%d = %.8f\n", i,i, x1);
      fprintf("X0 = %.8f | X1 = %.8f | \n", x0, x1);
   end

   i = i + 1;
   if(i == 100)
       result = NaN;
       disp("Ошибка: корень либо не существует, либо стремиться к бесконечности");
        return;
   end
end
result = x1;
end