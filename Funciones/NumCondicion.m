% Parametros de entrada : 
% Matriz a
% Parametros de salida : 
% cond : numero equivalente a el numero condicion de la matriz
function [ cond ] = NumCondicion( a )
  cond = NormInf(a) * NormInf(inv(a));
end

