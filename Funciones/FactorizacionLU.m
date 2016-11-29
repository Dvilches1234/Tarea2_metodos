function [ l , u ] = FactorizacionLU(a) 
    f= size(a,1);
    c = size(a,2);
    l = [[1,0,0];[0,1,0];[0,0,1]];
    for j=1 : c 
        
     for i=j+1 : f 
         
         l(i,j)= a(i,j)/a(j,j);
         m = l(i,j);
         
         for k = j : f 
             
            a(i,k) = a(i,k) - (m* a(j,k));
            
         end
     
     end
     
    end
    u=a
end

