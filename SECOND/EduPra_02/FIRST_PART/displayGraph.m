function displayGraph(equ, xMin, xMax, root)
% displayGraph - displays graph, lol
    XValues = xMin : (xMax - xMin) / 1000 : xMax; % Создаём вектор с хорошей точностью для отображения
    YValues = zeros(size(XValues)); % Создаём заглушки для значений функции
    YDiffValues = zeros(size(XValues));

    for i = 1:length(XValues)
        YValues(i) = equ(XValues(i)); % заполняем значения функции
        YDiffValues(i) = fDef(equ, i);
    end
    hold on;
    grid on;
    xlabel("X");
    ylabel("Y");
    xlim([xMin, xMax]);
    title("Графики функции:");

    plot(XValues, YValues, "-r");
    plot(XValues, YDiffValues, "-g");

    text(XValues(length(XValues)) * 0.7, YValues(length(YValues))*1.1 , "f(x)");
    text(XValues(length(XValues) ), YDiffValues(length(YDiffValues)), "F(f(x))");

    plot(root, equ(root), "o", "MarkerFaceColor", "red", "MarkerEdgeColor","black");
    text(root, equ(root)+20, "root")

    hold off;
end

