%x0: x inicial
%a: Matriz de coeficiente del sistema 
%b: matriz con los resultados del sistema
%tol: tolerancia 



function jac = Jacobi2( x0, a, b,tol)
   sz=size(a);
   q=a;
   for i=1:sz(1)
        for j=1:sz(2)
         if i~=j
            q(i,j)=0;
         end    
        end    
   end 
   m=eye(sz(1))-inv(q)*a;
   c=inv(q)*b;
   xk=m*x0+c;
   cont=0;
   respec=max(abs(eig(m)));
   %nor= norm(m)
   if respec<1
   %if norm(m)<1   
     while norm(xk-x0)/norm(xk)>=tol
       cont=cont+1
        x0=xk;
        xk=m*x0+c
         norm(xk-x0)/norm(xk)
     end
     jac=xk;
   end
end

