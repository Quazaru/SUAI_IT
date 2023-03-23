function output = correctInput(text, type)
% correctInput.m - Function to handle input errors
% 
% text - displays text
% type - ["e" - equation, "n" - number]
    while (true)
        x = input(text, "s");    
        if(type == "e")
            try
                f = eval(['@(x)', x, ';']);
                f(0);
                output = f;
                break;
            catch
                disp("ERROR: Некорректный ввод функции, попробуйте снова:");
            end
        elseif(type == "n")
            if(isnan(str2double(x)))
                disp(str2double(x));
                disp("ERROR: введено некорректное число, попробуйте снова:");
            elseif(length(strfind(x, ",")) >= 1)
                disp("ERROR: введено некорректное число, числа с плавающей точкой записываются через ""."", попробуйте снова:");
            else
                output = str2double(x);
                break;
            end
            
        else
            output = x;
        end
    end
end
