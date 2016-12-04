
% Norma 1  de un vector a (de una dimensión) 

function [ valor ] = Norma1( a )
    valor=0;
    for i=1:size(a)
        valor = valor +abs(a(i));
    end
end

