%x0: x inicial
%a: Matriz de coeficiente del sistema 
%b: matriz con los resultados del sistema
%tol: tolerancia 
%w: valor de w
%m: I-Q^(-1)*A

function gs = gs_implementable( x0, a, b,tol)
    sz=size(a);
    %sym j;
    xk=x0;
     for i=1:sz(1)
         sum1=0;
         sum2=0;
         for j=i+1:sz(1)
             sum1=sum1+a(i,j)*x0(j);
         end   
         for j=1:i-1
             sum2=sum2+a(i,j)*x0(j);
         end    
         xk(i)=(b(i)-sum1-sum2)/a(i,i);
          %xk(i)=(b(i)-symsum(a(i,j)*x0(j),j,[i+1, sz(1)])-symsum(a(i,j)*x0(j),j,[1,i-1]))/a(i,i);
     end     
    i=1;
    cont=0;
    q=tril(a);
     m=eye(sz(1))-inv(q)*a;
     respec=max(abs(eig(m)))
    if respec<1
     while norm(xk-x0)/norm(xk)>=tol
         cont=cont+1;
         x0=xk;
        for i=1:sz(1)
            sum1=0;
         sum2=0;
         for j=i+1:sz(1)
             sum1=sum1+a(i,j)*x0(j);
         end   
         for j=1:i-1
             sum2=sum2+a(i,j)*x0(j);
         end    
         xk(i)=(b(i)-sum1-sum2)/a(i,i);
            %xk(i)=(b(i)-symsum(a(i,j)*x0(j),j,i+1,sz(1))-symsum(a(i,j)*x0(j),j,1,i-1))/a(i,i);
        end 
        
     end
    end
    cont
       gs = xk;
end

