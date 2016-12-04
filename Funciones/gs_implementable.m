function gs = gs_implementable( x0, a, b,tol)
    sz=size(a)
    sym j;
    xk=x0;
     for i=1:sz(1)
          xk(i)=(b(i)-symsum(a(i,j)*x0(j),j,[i+1, sz(1)])-symsum(a(i,j)*x0(j),j,[1,i-1]))/a(i,i);
     end     
    i=1;
    
    q=tril(a);
     m=eye(sz(1))-inv(q)*a;
     respec=max(abs(eig(m)))
    if respec<1
     while norm(xk-x0)/norm(xk)>=tol
         x0=xk;
        for i=1:sz(1)
            xk(i)=(b(i)-symsum(a(i,j)*x0(j),j,i+1,sz(1))-symsum(a(i,j)*x0(j),j,1,i-1))/a(i,i);
        end 
        
     end
   end
       gs = xk;
end

