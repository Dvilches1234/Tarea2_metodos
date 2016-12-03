% a es una matriz de orden n x n, triangular inferior.
% b es un vector de orden n x 1
function [ x ] = DiagDown(a, b) 
    f = size(a, 1);
    x= zeros(f);
    x = x(:,1);

    for i = 1 :f
        suma = 0;
        for j = i-1:-1:1
            x(i);
            k = a(i,j)*x(i);
            suma = suma + a(i,j)*x(j);
        end
        x(i)=(b(i)-suma)/a(i,i);
    end
end
