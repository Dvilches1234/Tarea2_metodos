
% Parametros de entrada: 
% n : Orden de matrices
% Parametros de salida : 
% x : Vector solución
function [ x ] = Sol_problema2(n)
    a = zeros(n);
    a = Matrix2(a)
    for i = n:-1:1
        b(1,i)=1;
    end
    b
    l = Cholesky(a)
    y = DiagDown(l,b)
    x = DiagUp(l',y)
end

