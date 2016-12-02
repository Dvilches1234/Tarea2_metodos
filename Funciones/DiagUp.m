% a es una matriz de orden n x n, triangular superior 
% b es un vector de orden n x 1
function [ x ] = DiagUP(a, b) 
    f = size(a, 1);
    x= zeros(f);
    x = x(:,1);

    for i = f :-1:1
        suma = 0;
        for j = i+1:f
            j
            x(i)
            k = a(i,j)*x(i)
            suma = suma + a(i,j)*x(j)
        end
        x(i)=(b(i)-suma)/a(i,i)
    end
end
