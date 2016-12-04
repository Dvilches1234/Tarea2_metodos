
% retorna norma infinito de matriz a
function [ max1 ] = NormInf( a )
 for i = 1 : size(a,1)
       valor = 0;
       for j = 1 :size(a,2)
          valor = valor + abs(a(i,j));
       end
       n(i)= valor;
 end

  max1 = max(n);

end

