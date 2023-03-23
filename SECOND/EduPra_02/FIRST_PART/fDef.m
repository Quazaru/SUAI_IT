function df = fDef(equ, x0)
% fDef.m - function to calculate diff(equ, x0)
    h = 0.000001;
    df = (equ(x0 + h) - equ(x0))/(h);
end