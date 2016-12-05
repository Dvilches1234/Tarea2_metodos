%x0: x inicial
%a: Matriz de coeficiente del sistema 
%b: matriz con los resultados del sistema
%tol: tolerancia 
%m: I-Q^(-1)*A
%c: Q^(-1)*B
function gs = GaussSeidel( x0, a, b,tol)
   sz=size(a);
   q=tril(a);
   m=eye(sz(1))-inv(q)*a;
   c=inv(q)*b;
   xk=m*x0+c;
   cont=0;
   %nor= norm(m)
    respec=max(abs(eig(m)))
   if respec<1
  % if norm(m)<1   
    while norm(xk-x0)/norm(xk)>=tol
       cont=cont+1;
        x0=xk;
        xk=m*x0+c;
     end
     
   end
   gs=xk;
     cont
end