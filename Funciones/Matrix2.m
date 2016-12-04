%Crea matriz a ocupar en ejercicio 2

function [ a ] = Matrix2( a )
    a = Diag(a,1,1,-4);
    a = Diag(a,2,1,1);
    a = Diag(a,1,2,1);
    a = Diag(a,4,1,1);
    a = Diag(a,1,4,1);
    a
end

