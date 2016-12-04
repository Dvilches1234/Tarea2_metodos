% rellena matriz a con numero x 
% en la diagonal posicion i , j
function [ a ] = Diag( a , i , j ,x)
 while i <= size(a,1) && j <= size(a,2)
        a(i,j) = x;
        i = i+1;
        j = j+1;
 end
    
end

