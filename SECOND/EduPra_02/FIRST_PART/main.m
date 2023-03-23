% Calculate nonlinear equation by multipliers with simple iteration method
% F - diff from equ, lambda - 1/F, 
% 17 var. | 6*x.^3 + x.^2 + x  - 1.8 = 0
clc;
x = 1;
disp('����� ���������� � ��������� ���������� ����� ����������� ��������� ������� ������� ��������.');
equ = correctInput('��� ������ ��������� ������� ��������� ����: 6*x.^3 + 12*x.^2 + 12, � ����������� X: ', 'e');
A = correctInput('������� ����� �������: ', "n");
B = correctInput('������� ������ �������: ', "n");
Eps = correctInput('������� �������� ��������: ', "n");
result = calcRootByIterations(equ, A, B, Eps,  true);

if ~isnan(result)
    fprintf("RESULT: %.8f", result);
    fprintf("RESULT BY FZERO: %.8f", fzero(equ, A));
    displayGraph(equ, A, B, result);
end
