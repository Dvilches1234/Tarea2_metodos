%Parametros de entrada : 
% vector : arreglo de orden n x 1.
%Parametros de salida : 
% valor : resultado es un numero -1 o 1 dependiendo de los valores encontrados en el vector. 
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

