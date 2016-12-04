
%Operacion sgn de pregunta 3

function [ valor ] = sgn( vector )
    valor=1;
    for i=1 :size(vector,2)
        cant=1;
        if(vector(i)<0)
           cant = -1;
        end
        valor = valor * cant ;
    end
end

